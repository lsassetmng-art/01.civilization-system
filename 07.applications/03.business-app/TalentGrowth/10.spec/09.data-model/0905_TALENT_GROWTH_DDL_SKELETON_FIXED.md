# TALENT GROWTH DDL SKELETON FIXED

status: draft-ddl-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要テーブルについて、
PostgreSQL / Supabase 前提の DDL skeleton を固定するための資料である。

注意:
- これは final DDL ではなく skeleton fixed である
- exact column fixed を受けた物理設計の土台である
- 実装時は index / constraint / RLS を合わせて確定する

# 1. 物理設計原則
- primary key は text を採用する
- company scope を全業務テーブルに持つ
- code と label を分離する
- 監査列を標準採用する
- 金額は numeric(18,6)
- 日時は timestamptz
- 日付は date
- 真偽値は boolean
- 集計用 snapshot は append-first とする

# 2. 共通監査列 skeleton
~~~sql
-- common audit columns
created_at timestamptz not null default now(),
created_by text not null,
updated_at timestamptz not null default now(),
updated_by text not null,
deleted_at timestamptz null,
deleted_by text null,
audit_trace_id text null,
version_no integer not null default 1
~~~

# 3. 基礎マスタ

## 3-1. job_family_master
~~~sql
create table if not exists tg_job_family_master (
  job_family_id text primary key,
  company_id text not null,
  job_family_code text not null,
  label_ja text not null,
  label_en text null,
  label_zh text null,
  label_ko text null,
  description_text text null,
  is_active boolean not null default true,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, job_family_code)
);
~~~

## 3-2. job_role_master
~~~sql
create table if not exists tg_job_role_master (
  job_role_id text primary key,
  company_id text not null,
  job_family_id text not null references tg_job_family_master(job_family_id),
  job_role_code text not null,
  label_ja text not null,
  label_en text null,
  label_zh text null,
  label_ko text null,
  description_text text null,
  is_critical_role boolean not null default false,
  is_active boolean not null default true,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, job_role_code)
);
~~~

## 3-3. grade_master
~~~sql
create table if not exists tg_grade_master (
  grade_id text primary key,
  company_id text not null,
  grade_code text not null,
  label_ja text not null,
  label_en text null,
  label_zh text null,
  label_ko text null,
  grade_order integer not null,
  description_text text null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, grade_code)
);
~~~

## 3-4. skill_master
~~~sql
create table if not exists tg_skill_master (
  skill_id text primary key,
  company_id text not null,
  skill_code text not null,
  skill_category_code text not null,
  parent_skill_id text null references tg_skill_master(skill_id),
  label_ja text not null,
  label_en text null,
  label_zh text null,
  label_ko text null,
  description_text text null,
  skill_level_min integer not null default 1,
  skill_level_max integer not null default 5,
  is_active boolean not null default true,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, skill_code)
);
~~~

## 3-5. certification_master
~~~sql
create table if not exists tg_certification_master (
  certification_id text primary key,
  company_id text not null,
  certification_code text not null,
  label_ja text not null,
  label_en text null,
  label_zh text null,
  label_ko text null,
  issuer_name text null,
  renewal_required boolean not null default false,
  standard_valid_months integer null,
  description_text text null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, certification_code)
);
~~~

# 4. 人材基礎情報

## 4-1. employee_profile
~~~sql
create table if not exists tg_employee_profile (
  employee_id text primary key,
  company_id text not null,
  employee_code text not null,
  external_employee_key text null,
  full_name text not null,
  full_name_kana text null,
  display_name text null,
  email text null,
  phone text null,
  employment_type_code text not null,
  organization_id text not null,
  position_title text null,
  current_job_family_id text null references tg_job_family_master(job_family_id),
  current_job_role_id text null references tg_job_role_master(job_role_id),
  current_grade_id text null references tg_grade_master(grade_id),
  manager_employee_id text null,
  work_location_code text null,
  country_code text null,
  preferred_language_code text not null default 'ja',
  reporting_currency_code text not null default 'JPY',
  hire_date date null,
  termination_date date null,
  is_active boolean not null default true,
  career_preference_text text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, employee_code)
);
~~~

## 4-2. employee_academic_history
~~~sql
create table if not exists tg_employee_academic_history (
  employee_academic_history_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  school_name text not null,
  faculty_name text null,
  department_name text null,
  degree_code text null,
  major_name text null,
  graduation_status_code text null,
  graduation_date date null,
  academic_relevance_score numeric(5,2) null,
  evidence_file_id text null,
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 4-3. employee_career_history
~~~sql
create table if not exists tg_employee_career_history (
  employee_career_history_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  organization_id text not null,
  job_family_id text null references tg_job_family_master(job_family_id),
  job_role_id text null references tg_job_role_master(job_role_id),
  title_name text null,
  start_date date not null,
  end_date date null,
  years_of_experience_months integer not null default 0,
  industry_code text null,
  is_manager_role boolean not null default false,
  summary_text text null,
  achievement_summary_text text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 4-4. employee_achievement
~~~sql
create table if not exists tg_employee_achievement (
  employee_achievement_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  achievement_type_code text not null,
  achievement_title text not null,
  achievement_description text null,
  period_start date null,
  period_end date null,
  metric_name text null,
  metric_value numeric(18,6) null,
  metric_unit text null,
  goal_linked_flag boolean not null default false,
  external_goal_key text null,
  evidence_file_id text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 5. 資格 / スキル

## 5-1. employee_certification
~~~sql
create table if not exists tg_employee_certification (
  employee_certification_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  certification_id text not null references tg_certification_master(certification_id),
  certification_name_snapshot text not null,
  issuer_name_snapshot text null,
  license_number text null,
  acquired_date date null,
  expiry_date date null,
  renewal_required boolean not null default false,
  certification_status_code text not null,
  last_renewed_at date null,
  next_renewal_due_at date null,
  source_amount numeric(18,6) null,
  source_currency text null,
  reporting_amount numeric(18,6) null,
  reporting_currency text null,
  fx_rate numeric(18,6) null,
  fx_rate_applied_at timestamptz null,
  evidence_file_id text null,
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 5-2. employee_certification_renewal
~~~sql
create table if not exists tg_employee_certification_renewal (
  employee_certification_renewal_id text primary key,
  company_id text not null,
  employee_certification_id text not null references tg_employee_certification(employee_certification_id),
  employee_id text not null references tg_employee_profile(employee_id),
  renewed_at date not null,
  old_expiry_date date null,
  new_expiry_date date not null,
  renewal_cost_source_amount numeric(18,6) null,
  renewal_cost_source_currency text null,
  renewal_cost_reporting_amount numeric(18,6) null,
  renewal_cost_reporting_currency text null,
  renewal_fx_rate numeric(18,6) null,
  renewal_fx_rate_applied_at timestamptz null,
  evidence_file_id text null,
  renewal_note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 5-3. employee_skill
~~~sql
create table if not exists tg_employee_skill (
  employee_skill_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  skill_id text not null references tg_skill_master(skill_id),
  proficiency_level integer not null,
  self_rating numeric(5,2) null,
  manager_rating numeric(5,2) null,
  last_used_at date null,
  usage_frequency_code text null,
  evidence_count integer not null default 0,
  evidence_confidence numeric(5,2) null,
  skill_freshness_score numeric(5,2) null,
  is_primary_skill boolean not null default false,
  employee_comment text null,
  manager_comment text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, employee_id, skill_id)
);
~~~

## 5-4. employee_skill_evidence
~~~sql
create table if not exists tg_employee_skill_evidence (
  employee_skill_evidence_id text primary key,
  company_id text not null,
  employee_skill_id text not null references tg_employee_skill(employee_skill_id),
  employee_id text not null references tg_employee_profile(employee_id),
  evidence_type_code text not null,
  evidence_title text not null,
  evidence_description text null,
  evidence_file_id text null,
  source_system_code text null,
  source_reference_key text null,
  occurred_at timestamptz null,
  confidence_score numeric(5,2) null,
  is_verified boolean not null default false,
  verified_by text null,
  verified_at timestamptz null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 6. 要件 / テンプレート

## 6-1. role_requirement
~~~sql
create table if not exists tg_role_requirement (
  role_requirement_id text primary key,
  company_id text not null,
  job_family_id text null references tg_job_family_master(job_family_id),
  job_role_id text not null references tg_job_role_master(job_role_id),
  grade_id text null references tg_grade_master(grade_id),
  requirement_version text not null,
  effective_from date not null,
  effective_to date null,
  template_name text null,
  status_code text not null,
  overall_weight_skill numeric(5,2) not null default 0,
  overall_weight_certification numeric(5,2) not null default 0,
  overall_weight_experience numeric(5,2) not null default 0,
  overall_weight_performance numeric(5,2) not null default 0,
  overall_weight_behavior numeric(5,2) not null default 0,
  overall_weight_growth numeric(5,2) not null default 0,
  description_text text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 6-2. role_requirement_skill
~~~sql
create table if not exists tg_role_requirement_skill (
  role_requirement_skill_id text primary key,
  company_id text not null,
  role_requirement_id text not null references tg_role_requirement(role_requirement_id),
  skill_id text not null references tg_skill_master(skill_id),
  required_level integer not null,
  preferred_level integer null,
  weight_score numeric(5,2) not null default 0,
  mandatory_flag boolean not null default false,
  recency_required_months integer null,
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 6-3. role_requirement_certification
~~~sql
create table if not exists tg_role_requirement_certification (
  role_requirement_certification_id text primary key,
  company_id text not null,
  role_requirement_id text not null references tg_role_requirement(role_requirement_id),
  certification_id text not null references tg_certification_master(certification_id),
  mandatory_flag boolean not null default false,
  preferred_flag boolean not null default false,
  weight_score numeric(5,2) not null default 0,
  renewal_required boolean not null default false,
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 7. 評価運用

## 7-1. evaluation_cycle
~~~sql
create table if not exists tg_evaluation_cycle (
  evaluation_cycle_id text primary key,
  company_id text not null,
  cycle_code text not null,
  cycle_name text not null,
  target_scope_code text not null,
  period_start date not null,
  period_end date not null,
  self_review_due_at timestamptz null,
  manager_review_due_at timestamptz null,
  hr_review_due_at timestamptz null,
  publish_at timestamptz null,
  cycle_status_code text not null,
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, cycle_code)
);
~~~

## 7-2. evaluation_sheet
~~~sql
create table if not exists tg_evaluation_sheet (
  evaluation_sheet_id text primary key,
  company_id text not null,
  evaluation_cycle_id text not null references tg_evaluation_cycle(evaluation_cycle_id),
  employee_id text not null references tg_employee_profile(employee_id),
  manager_employee_id text null references tg_employee_profile(employee_id),
  hr_owner_employee_id text null references tg_employee_profile(employee_id),
  current_job_family_id text null references tg_job_family_master(job_family_id),
  current_job_role_id text null references tg_job_role_master(job_role_id),
  current_grade_id text null references tg_grade_master(grade_id),
  target_job_role_id text null references tg_job_role_master(job_role_id),
  target_grade_id text null references tg_grade_master(grade_id),
  evaluation_status_code text not null,
  current_state_rank text null,
  future_readiness_rank text null,
  total_evaluation_score numeric(7,2) null,
  current_role_fit_score numeric(7,2) null,
  target_role_fit_score numeric(7,2) null,
  growth_potential_score numeric(7,2) null,
  promotion_readiness_score numeric(7,2) null,
  successor_readiness_score numeric(7,2) null,
  self_review_submitted_at timestamptz null,
  manager_review_submitted_at timestamptz null,
  approved_at timestamptz null,
  published_at timestamptz null,
  reopened_at timestamptz null,
  sent_back_at timestamptz null,
  current_step_owner_role_code text null,
  lock_version integer not null default 1,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1,
  unique (company_id, evaluation_cycle_id, employee_id)
);
~~~

## 7-3. evaluation_score_detail
~~~sql
create table if not exists tg_evaluation_score_detail (
  evaluation_score_detail_id text primary key,
  company_id text not null,
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  score_category_code text not null,
  score_item_code text not null,
  raw_score numeric(7,2) null,
  adjusted_score numeric(7,2) null,
  weight_score numeric(7,2) null,
  final_score numeric(7,2) null,
  pre_calibration_score numeric(7,2) null,
  post_calibration_score numeric(7,2) null,
  calculation_note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-4. evaluation_comment
~~~sql
create table if not exists tg_evaluation_comment (
  evaluation_comment_id text primary key,
  company_id text not null,
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  comment_type_code text not null,
  actor_employee_id text not null references tg_employee_profile(employee_id),
  actor_role_code text not null,
  original_text text not null,
  translated_text text null,
  language_code text not null,
  ai_assisted_flag boolean not null default false,
  ai_draft_id text null,
  is_published_to_employee boolean not null default false,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-5. evaluation_evidence
~~~sql
create table if not exists tg_evaluation_evidence (
  evaluation_evidence_id text primary key,
  company_id text not null,
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  evidence_type_code text not null,
  evidence_title text not null,
  evidence_file_id text null,
  source_system_code text null,
  source_reference_key text null,
  linked_score_category_code text null,
  linked_score_item_code text null,
  confidence_score numeric(5,2) null,
  verified_flag boolean not null default false,
  verified_by text null,
  verified_at timestamptz null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-6. evaluation_snapshot
~~~sql
create table if not exists tg_evaluation_snapshot (
  evaluation_snapshot_id text primary key,
  company_id text not null,
  evaluation_cycle_id text not null references tg_evaluation_cycle(evaluation_cycle_id),
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  employee_id text not null references tg_employee_profile(employee_id),
  total_evaluation_score numeric(7,2) null,
  current_role_fit_score numeric(7,2) null,
  target_role_fit_score numeric(7,2) null,
  growth_potential_score numeric(7,2) null,
  promotion_readiness_score numeric(7,2) null,
  successor_readiness_score numeric(7,2) null,
  current_state_rank text null,
  future_readiness_rank text null,
  snapshot_taken_at timestamptz not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-7. evaluation_change_audit
~~~sql
create table if not exists tg_evaluation_change_audit (
  evaluation_change_audit_id text primary key,
  company_id text not null,
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  changed_by_employee_id text not null references tg_employee_profile(employee_id),
  changed_by_role_code text not null,
  action_type text not null,
  changed_field_name text not null,
  old_value_text text null,
  new_value_text text null,
  change_reason_text text null,
  changed_at timestamptz not null default now(),
  audit_trace_id text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  version_no integer not null default 1
);
~~~

## 7-8. evaluation_approval
~~~sql
create table if not exists tg_evaluation_approval (
  evaluation_approval_id text primary key,
  company_id text not null,
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  approval_step_code text not null,
  approver_employee_id text not null references tg_employee_profile(employee_id),
  approval_action_code text not null,
  approval_comment text null,
  acted_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-9. calibration_session
~~~sql
create table if not exists tg_calibration_session (
  calibration_session_id text primary key,
  company_id text not null,
  evaluation_cycle_id text not null references tg_evaluation_cycle(evaluation_cycle_id),
  session_name text not null,
  session_date date not null,
  session_status_code text not null,
  chair_employee_id text null references tg_employee_profile(employee_id),
  note text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 7-10. calibration_log
~~~sql
create table if not exists tg_calibration_log (
  calibration_log_id text primary key,
  company_id text not null,
  calibration_session_id text not null references tg_calibration_session(calibration_session_id),
  evaluation_sheet_id text not null references tg_evaluation_sheet(evaluation_sheet_id),
  pre_rank_code text null,
  post_rank_code text null,
  pre_total_score numeric(7,2) null,
  post_total_score numeric(7,2) null,
  change_reason_text text null,
  meeting_note text null,
  changed_by_employee_id text not null references tg_employee_profile(employee_id),
  changed_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 8. 成長支援 / 候補抽出

## 8-1. growth_plan
~~~sql
create table if not exists tg_growth_plan (
  growth_plan_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  evaluation_sheet_id text null references tg_evaluation_sheet(evaluation_sheet_id),
  plan_title text not null,
  target_job_role_id text null references tg_job_role_master(job_role_id),
  target_grade_id text null references tg_grade_master(grade_id),
  plan_period_start date not null,
  plan_period_end date not null,
  growth_plan_status_code text not null,
  owner_employee_id text not null references tg_employee_profile(employee_id),
  manager_employee_id text null references tg_employee_profile(employee_id),
  plan_summary_text text null,
  next_review_due_at date null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 8-2. growth_action
~~~sql
create table if not exists tg_growth_action (
  growth_action_id text primary key,
  company_id text not null,
  growth_plan_id text not null references tg_growth_plan(growth_plan_id),
  employee_id text not null references tg_employee_profile(employee_id),
  action_type_code text not null,
  action_title text not null,
  action_description text null,
  priority_code text not null,
  due_date date null,
  reason_code text null,
  reason_text text null,
  linked_skill_id text null references tg_skill_master(skill_id),
  linked_certification_id text null references tg_certification_master(certification_id),
  linked_training_id text null,
  action_status_code text not null,
  completion_percent integer not null default 0,
  completed_at timestamptz null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 8-3. growth_recommendation
~~~sql
create table if not exists tg_growth_recommendation (
  growth_recommendation_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  evaluation_sheet_id text null references tg_evaluation_sheet(evaluation_sheet_id),
  recommendation_type_code text not null,
  recommendation_title text not null,
  recommendation_reason text not null,
  linked_gap_code text null,
  priority_code text not null,
  target_due_date date null,
  accepted_flag boolean not null default false,
  accepted_at timestamptz null,
  rejected_flag boolean not null default false,
  rejected_reason_text text null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 8-4. role_fit_snapshot
~~~sql
create table if not exists tg_role_fit_snapshot (
  role_fit_snapshot_id text primary key,
  company_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  target_job_role_id text not null references tg_job_role_master(job_role_id),
  target_grade_id text null references tg_grade_master(grade_id),
  current_role_fit_score numeric(7,2) null,
  target_role_fit_score numeric(7,2) null,
  promotion_readiness_score numeric(7,2) null,
  successor_readiness_score numeric(7,2) null,
  top_gap_codes_json jsonb not null default '[]'::jsonb,
  calculated_at timestamptz not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 8-5. successor_candidate
~~~sql
create table if not exists tg_successor_candidate (
  successor_candidate_id text primary key,
  company_id text not null,
  critical_role_id text not null,
  employee_id text not null references tg_employee_profile(employee_id),
  readiness_score numeric(7,2) not null,
  readiness_code text not null,
  risk_note text null,
  target_ready_date date null,
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  updated_by text not null,
  deleted_at timestamptz null,
  deleted_by text null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 9. 投資 / AI / 監査

## 9-1. training_roi_snapshot
~~~sql
create table if not exists tg_training_roi_snapshot (
  training_roi_snapshot_id text primary key,
  company_id text not null,
  organization_id text not null,
  period_start date not null,
  period_end date not null,
  source_amount numeric(18,6) null,
  source_currency text null,
  reporting_amount numeric(18,6) null,
  reporting_currency text null,
  fx_rate numeric(18,6) null,
  score_improvement_value numeric(18,6) null,
  roi_ratio numeric(18,6) null,
  calculated_at timestamptz not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 9-2. ai_assist_reference_log
~~~sql
create table if not exists tg_ai_assist_reference_log (
  ai_assist_reference_log_id text primary key,
  company_id text not null,
  entity_type text not null,
  entity_id text not null,
  actor_employee_id text not null references tg_employee_profile(employee_id),
  actor_role_code text not null,
  ai_action_code text not null,
  ai_draft_id text null,
  prompt_summary_text text null,
  referenced_at timestamptz not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

## 9-3. audit_export_log
~~~sql
create table if not exists tg_audit_export_log (
  audit_export_log_id text primary key,
  company_id text not null,
  exported_by_employee_id text not null references tg_employee_profile(employee_id),
  export_type_code text not null,
  date_from date null,
  date_to date null,
  export_file_id text null,
  exported_at timestamptz not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);
~~~

# 10. 推奨index skeleton
~~~sql
create index if not exists idx_tg_employee_profile_company_org
  on tg_employee_profile(company_id, organization_id);

create index if not exists idx_tg_employee_certification_company_expiry
  on tg_employee_certification(company_id, expiry_date);

create index if not exists idx_tg_employee_skill_company_employee
  on tg_employee_skill(company_id, employee_id);

create index if not exists idx_tg_role_requirement_company_role_grade
  on tg_role_requirement(company_id, job_role_id, grade_id);

create index if not exists idx_tg_evaluation_sheet_company_cycle_status
  on tg_evaluation_sheet(company_id, evaluation_cycle_id, evaluation_status_code);

create index if not exists idx_tg_evaluation_sheet_company_employee
  on tg_evaluation_sheet(company_id, employee_id);

create index if not exists idx_tg_growth_plan_company_employee
  on tg_growth_plan(company_id, employee_id);

create index if not exists idx_tg_role_fit_snapshot_company_target_role
  on tg_role_fit_snapshot(company_id, target_job_role_id);

create index if not exists idx_tg_ai_assist_reference_log_company_entity
  on tg_ai_assist_reference_log(company_id, entity_type, entity_id);
~~~

# 11. 結論
TalentGrowth の DDL skeleton は、
master, human profile, certification, skill, requirement, evaluation,
growth, candidate, audit, AI reference の各領域で固定する。

特に中心となる物理テーブルは以下である。
- tg_employee_profile
- tg_employee_certification
- tg_employee_skill
- tg_role_requirement
- tg_evaluation_sheet
- tg_evaluation_score_detail
- tg_growth_plan
- tg_role_fit_snapshot
