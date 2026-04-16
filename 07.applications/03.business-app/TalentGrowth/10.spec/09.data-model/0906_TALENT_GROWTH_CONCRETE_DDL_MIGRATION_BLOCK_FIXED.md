# TALENT GROWTH CONCRETE DDL MIGRATION BLOCK FIXED

status: draft-concrete-ddl-migration-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の phase A 実装開始に必要な
concrete DDL migration block を固定するための資料である。

前提:
- これは execution-ready に近い migration block の設計資料である
- final production DDL ではなく、phase A kickoff 用の concrete baseline である
- additive only
- destructive change はここでは扱わない

# 1. phase A migration scope
この migration block で作る対象:
- master baseline
- employee baseline
- certification baseline
- skill baseline
- role requirement baseline
- evaluation baseline
- growth baseline
- audit baseline
- outbox / notification baseline

# 2. migration naming recommendation
recommended file names:
- 0001_tg_phase_a_foundation.sql
- 0002_tg_phase_a_indexes.sql
- 0003_tg_phase_a_rls_baseline.sql
- 0004_tg_phase_a_seed_minimum.sql

# 3. concrete migration block example

## 3-1. 0001_tg_phase_a_foundation.sql
~~~sql
begin;

create table if not exists tg_job_family_master (
  job_family_id text primary key,
  company_id text not null,
  job_family_code text not null,
  label_ja text not null,
  label_en text null,
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

create table if not exists tg_job_role_master (
  job_role_id text primary key,
  company_id text not null,
  job_family_id text not null references tg_job_family_master(job_family_id),
  job_role_code text not null,
  label_ja text not null,
  label_en text null,
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

create table if not exists tg_grade_master (
  grade_id text primary key,
  company_id text not null,
  grade_code text not null,
  label_ja text not null,
  label_en text null,
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

create table if not exists tg_skill_master (
  skill_id text primary key,
  company_id text not null,
  skill_code text not null,
  skill_category_code text not null,
  label_ja text not null,
  label_en text null,
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

create table if not exists tg_certification_master (
  certification_id text primary key,
  company_id text not null,
  certification_code text not null,
  label_ja text not null,
  label_en text null,
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

create table if not exists tg_employee_profile (
  employee_id text primary key,
  company_id text not null,
  employee_code text not null,
  external_employee_key text null,
  full_name text not null,
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

create table if not exists tg_outbox_event (
  outbox_event_id text primary key,
  company_id text not null,
  event_name text not null,
  event_domain text not null,
  entity_type text not null,
  entity_id text not null,
  aggregate_key text null,
  payload_json jsonb not null default '{}'::jsonb,
  status_code text not null,
  occurred_at timestamptz not null,
  available_at timestamptz not null default now(),
  retry_count integer not null default 0,
  last_retry_at timestamptz null,
  last_error_code text null,
  last_error_message text null,
  published_at timestamptz null,
  consumed_by_json jsonb not null default '[]'::jsonb,
  audit_trace_id text null,
  created_at timestamptz not null default now(),
  created_by text not null
);

create table if not exists tg_notification (
  notification_id text primary key,
  company_id text not null,
  source_event_id text not null references tg_outbox_event(outbox_event_id),
  notification_type_code text not null,
  target_employee_id text not null references tg_employee_profile(employee_id),
  title_key text not null,
  body_key text not null,
  body_params_json jsonb not null default '{}'::jsonb,
  deep_link_type text null,
  deep_link_target_id text null,
  priority_code text not null,
  unread_flag boolean not null default true,
  notification_status_code text not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);

create table if not exists tg_notification_delivery (
  notification_delivery_id text primary key,
  company_id text not null,
  notification_id text not null references tg_notification(notification_id),
  channel_code text not null,
  dedupe_key text null,
  delivery_status_code text not null,
  attempted_at timestamptz null,
  delivered_at timestamptz null,
  provider_message_id text null,
  last_error_code text null,
  last_error_message text null,
  retry_count integer not null default 0,
  created_at timestamptz not null default now(),
  created_by text not null,
  audit_trace_id text null,
  version_no integer not null default 1
);

commit;
~~~

## 3-2. 0002_tg_phase_a_indexes.sql
~~~sql
begin;

create index if not exists idx_tg_employee_profile_company_org
  on tg_employee_profile(company_id, organization_id);

create index if not exists idx_tg_employee_certification_company_expiry
  on tg_employee_certification(company_id, expiry_date);

create index if not exists idx_tg_employee_skill_company_employee
  on tg_employee_skill(company_id, employee_id);

create index if not exists idx_tg_role_requirement_company_role_grade
  on tg_role_requirement(company_id, job_role_id, grade_id);

create index if not exists idx_tg_evaluation_cycle_company_status
  on tg_evaluation_cycle(company_id, cycle_status_code);

create index if not exists idx_tg_evaluation_sheet_company_cycle_status
  on tg_evaluation_sheet(company_id, evaluation_cycle_id, evaluation_status_code);

create index if not exists idx_tg_evaluation_sheet_company_employee
  on tg_evaluation_sheet(company_id, employee_id);

create index if not exists idx_tg_growth_plan_company_employee
  on tg_growth_plan(company_id, employee_id);

create index if not exists idx_tg_outbox_event_status_available
  on tg_outbox_event(status_code, available_at);

create index if not exists idx_tg_notification_target_unread
  on tg_notification(company_id, target_employee_id, unread_flag);

create index if not exists idx_tg_notification_delivery_status_channel
  on tg_notification_delivery(delivery_status_code, channel_code);

commit;
~~~

## 3-3. 0003_tg_phase_a_rls_baseline.sql
~~~sql
begin;

alter table tg_employee_profile enable row level security;
alter table tg_employee_certification enable row level security;
alter table tg_employee_skill enable row level security;
alter table tg_evaluation_sheet enable row level security;
alter table tg_growth_plan enable row level security;
alter table tg_notification enable row level security;

-- example skeleton only
-- employee self own profile
create policy tg_employee_profile_self_select
on tg_employee_profile
for select
using (
  company_id = auth_company_id()
  and employee_id = auth_employee_id()
);

-- HR all within company
create policy tg_employee_profile_hr_all
on tg_employee_profile
for all
using (
  company_id = auth_company_id()
  and is_hr_operator()
)
with check (
  company_id = auth_company_id()
  and is_hr_operator()
);

-- employee self own notifications
create policy tg_notification_self_select
on tg_notification
for select
using (
  company_id = auth_company_id()
  and target_employee_id = auth_employee_id()
);

commit;
~~~

## 3-4. 0004_tg_phase_a_seed_minimum.sql
~~~sql
begin;

insert into tg_job_family_master (
  job_family_id, company_id, job_family_code, label_ja, created_by, updated_by
) values
  ('jfam_store', 'comp_demo_01', 'STORE', '店舗職群', 'seed', 'seed')
on conflict do nothing;

insert into tg_job_role_master (
  job_role_id, company_id, job_family_id, job_role_code, label_ja, created_by, updated_by
) values
  ('jrole_store_staff', 'comp_demo_01', 'jfam_store', 'STORE_STAFF', '店舗担当', 'seed', 'seed'),
  ('jrole_store_manager', 'comp_demo_01', 'jfam_store', 'STORE_MANAGER', '店長', 'seed', 'seed')
on conflict do nothing;

insert into tg_grade_master (
  grade_id, company_id, grade_code, label_ja, grade_order, created_by, updated_by
) values
  ('grade_g2', 'comp_demo_01', 'G2', '一般', 20, 'seed', 'seed'),
  ('grade_g3', 'comp_demo_01', 'G3', '主任級', 30, 'seed', 'seed')
on conflict do nothing;

commit;
~~~

# 4. migration execution order
1. foundation tables
2. indexes
3. baseline RLS
4. minimum seed
5. test data seed
6. API mock / integration tests
7. batch / outbox activation

# 5. implementation caution
- helper auth functions must exist before full RLS activation
- admin bypass policy must not be blanket-open
- publish / approve を先に実装する前に audit append を通す
- outbox table は phase A から置く
- no destructive replace of earlier tables

# 6. conclusion
TalentGrowth の concrete DDL migration block は、
phase A を動かす最小骨格として固定する。
