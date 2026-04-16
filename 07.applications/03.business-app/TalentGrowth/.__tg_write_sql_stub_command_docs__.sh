#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

APP_ROOT="/data/data/com.termux/files/home/01.civilization-system/07.applications/TalentGrowth"

mkdir -p \
  "$APP_ROOT/10.spec/09.data-model" \
  "$APP_ROOT/10.spec/08.integration" \
  "$APP_ROOT/120.implementation" \
  "$APP_ROOT/90.meta"

cat > "$APP_ROOT/10.spec/09.data-model/0907_TALENT_GROWTH_PHASE_A_CONCRETE_SQL_EXECUTION_BLOCK_FIXED.md" <<'EOF'
# TALENT GROWTH PHASE A CONCRETE SQL EXECUTION BLOCK FIXED

status: draft-phase-a-sql-execution-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. 目的
本資料は、
TalentGrowth phase A の DB 構築を
Termux からそのまま実行できる SQL execution block として固定するための資料である。

前提:
- Termux 実行
- psql は DATABASE_URL を使う
- 方法Aを採用する
- additive only
- 実行前に 佐藤(DB担当) レビュー前提

# 1. execution rule
- psql "$DATABASE_URL" <<'SQL' ... SQL の形式を唯一の実行形式とする
- 途中で interactive psql に入らない
- rollback 可能性を考慮し transaction block を使う
- destructive change はこの block に含めない

# 2. pre-check
実行前確認:
- DATABASE_URL が export 済み
- 対象 DB が TalentGrowth 用スキーマ追加可能
- helper auth functions は別途存在 or 後続で追加
- 既存テーブル名競合がない
- 佐藤レビュー完了

# 3. concrete phase A execution block
~~~bash
psql "$DATABASE_URL" <<'SQL'
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
SQL
~~~

# 4. concrete minimum seed execution block
~~~bash
psql "$DATABASE_URL" <<'SQL'
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

insert into tg_skill_master (
  skill_id, company_id, skill_code, skill_category_code, label_ja, created_by, updated_by
) values
  ('skill_customer_response', 'comp_demo_01', 'CUSTOMER_RESPONSE', 'STORE', '顧客対応', 'seed', 'seed'),
  ('skill_numeric_management', 'comp_demo_01', 'NUMERIC_MANAGEMENT', 'STORE', '数値管理', 'seed', 'seed'),
  ('skill_people_development', 'comp_demo_01', 'PEOPLE_DEVELOPMENT', 'STORE', '人材育成', 'seed', 'seed'),
  ('skill_store_operation', 'comp_demo_01', 'STORE_OPERATION', 'STORE', '店舗運営', 'seed', 'seed')
on conflict do nothing;

insert into tg_certification_master (
  certification_id, company_id, certification_code, label_ja, issuer_name, renewal_required, created_by, updated_by
) values
  ('cert_hygiene_manager', 'comp_demo_01', 'HYGIENE_MANAGER', '第一種衛生管理者', '厚生労働省', true, 'seed', 'seed'),
  ('cert_safety_supervisor', 'comp_demo_01', 'SAFETY_SUPERVISOR', '安全衛生推進者', '厚生労働省', true, 'seed', 'seed')
on conflict do nothing;

commit;
SQL
~~~

# 5. recommended run order
1. foundation execution block
2. seed execution block
3. mock dataset insert block
4. API stub start
5. phase A regression smoke

# 6. completion check query examples
~~~bash
psql "$DATABASE_URL" <<'SQL'
select
  (select count(*) from tg_job_family_master) as job_family_count,
  (select count(*) from tg_job_role_master) as job_role_count,
  (select count(*) from tg_grade_master) as grade_count,
  (select count(*) from tg_skill_master) as skill_count,
  (select count(*) from tg_certification_master) as certification_count;
SQL
~~~

# 7. conclusion
TalentGrowth phase A の SQL execution block は、
Termux + DATABASE_URL + 方法A でそのまま実行可能な形に固定する。
EOF

cat > "$APP_ROOT/10.spec/08.integration/0812_TALENT_GROWTH_API_STUB_RESPONSE_SET_FIXED.md" <<'EOF'
# TALENT GROWTH API STUB RESPONSE SET FIXED

status: draft-api-stub-response-set-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth phase A 実装で先に frontend をつなげるための
API stub response set を固定するための資料である。

前提:
- mock dataset 固定済み
- exact payload 固定済み
- ここでは representative response を phase A 優先で固定する

# 1. stub use rule
- stub は exact payload shape を崩さない
- stable ids を使う
- generated_at / request_id / version を入れる
- error stub も同時に持つ
- state transition で response を切り替えられるようにする

# 2. GET /api/v1/me stub
~~~json
{
  "ok": true,
  "data": {
    "employee_id": "emp_demo_01",
    "company_id": "comp_demo_01",
    "full_name": "山田 太郎",
    "display_name": "山田 太郎",
    "role_codes": ["EMPLOYEE"],
    "organization_id": "org_tohoku_sales",
    "preferred_language_code": "ja",
    "reporting_currency_code": "JPY"
  },
  "meta": {
    "request_id": "stub_me_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 3. GET /api/v1/employee/dashboard stub
~~~json
{
  "ok": true,
  "data": {
    "employee_id": "emp_demo_01",
    "employee_name": "山田 太郎",
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 81.0,
    "current_state_rank": "B",
    "next_review_due_at": "2026-06-30",
    "pending_items": [
      {
        "item_code": "SELF_REVIEW_SUBMITTED",
        "label": "上長レビュー待ち",
        "count": 1
      }
    ],
    "expiring_certifications": [
      {
        "employee_certification_id": "ecert_demo_01",
        "certification_name": "第一種衛生管理者",
        "expiry_date": "2026-05-15",
        "days_left": 32
      }
    ],
    "top_growth_actions": [
      {
        "growth_action_id": "gact_demo_01",
        "action_type": "TRAINING",
        "title": "数値管理基礎研修",
        "priority": "HIGH",
        "due_date": "2026-06-15"
      }
    ],
    "score_trend": {
      "previous_total_score": 71.0,
      "current_total_score": 75.5,
      "delta": 4.5
    }
  },
  "meta": {
    "request_id": "stub_emp_dash_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 4. GET /api/v1/employee-certifications stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "employee_certification_id": "ecert_demo_01",
        "employee_id": "emp_demo_01",
        "certification_id": "cert_hygiene_manager",
        "certification_name_snapshot": "第一種衛生管理者",
        "issuer_name_snapshot": "厚生労働省",
        "acquired_date": "2023-05-01",
        "expiry_date": "2026-05-15",
        "renewal_required": true,
        "certification_status_code": "EXPIRING_SOON",
        "days_left": 32
      }
    ]
  },
  "meta": {
    "request_id": "stub_cert_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 5. GET /api/v1/employee-skills stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "employee_skill_id": "eskill_demo_01",
        "employee_id": "emp_demo_01",
        "skill_id": "skill_customer_response",
        "skill_label": "顧客対応",
        "proficiency_level": 4,
        "self_rating": 82,
        "manager_rating": 80,
        "evidence_count": 2,
        "employee_comment": "クレーム初動対応は単独で実施可能"
      },
      {
        "employee_skill_id": "eskill_demo_03",
        "employee_id": "emp_demo_01",
        "skill_id": "skill_numeric_management",
        "skill_label": "数値管理",
        "proficiency_level": 2,
        "self_rating": 55,
        "manager_rating": 58,
        "evidence_count": 0,
        "employee_comment": "月次分析は弱い"
      }
    ]
  },
  "meta": {
    "request_id": "stub_skill_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 6. GET /api/v1/evaluation-sheets/{evaluation_sheet_id} stub
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_demo_01",
    "employee_id": "emp_demo_01",
    "employee_name": "山田 太郎",
    "manager_employee_id": "emp_demo_mgr_01",
    "evaluation_cycle_id": "ecycle_demo_2026h1",
    "cycle_name": "2026年上期評価",
    "evaluation_status_code": "SELF_REVIEW_SUBMITTED",
    "current_state_rank": "B",
    "future_readiness_rank": "B",
    "total_evaluation_score": 75.5,
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 81.0,
    "promotion_readiness_score": 64.0,
    "successor_readiness_score": 61.0,
    "self_review_comment": "現職では店舗運営の再現性は高いが、数値管理と後輩育成に課題がある。",
    "skill_items": [
      {
        "employee_skill_id": "eskill_demo_01",
        "skill_label": "顧客対応",
        "proficiency_level": 4,
        "self_comment": "クレーム初動対応は単独で実施可能",
        "evidence_ids": ["evi_demo_01"]
      },
      {
        "employee_skill_id": "eskill_demo_03",
        "skill_label": "数値管理",
        "proficiency_level": 2,
        "self_comment": "日次管理は可能だが月次分析は弱い",
        "evidence_ids": []
      }
    ],
    "achievement_items": [
      {
        "employee_achievement_id": "ach_demo_01",
        "achievement_title": "月次粗利改善",
        "self_comment": "担当売場の粗利改善に寄与"
      }
    ]
  },
  "meta": {
    "request_id": "stub_eval_sheet_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 7. GET /api/v1/manager/review-queue stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "evaluation_sheet_id": "esheet_demo_01",
        "employee_id": "emp_demo_01",
        "employee_name": "山田 太郎",
        "organization_name": "東北営業部",
        "current_state_rank": "B",
        "status": "SELF_REVIEW_SUBMITTED",
        "submitted_at": "2026-04-13T09:30:00+09:00",
        "expiring_certification_count": 1,
        "evidence_count": 4
      }
    ]
  },
  "meta": {
    "request_id": "stub_mgr_queue_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 8. GET /api/v1/growth-plans stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "growth_plan_id": "gplan_demo_01",
        "employee_id": "emp_demo_01",
        "plan_title": "2026年上期 成長計画",
        "target_job_role_id": "jrole_store_manager",
        "target_job_role_label": "店長",
        "plan_period_start": "2026-05-01",
        "plan_period_end": "2026-10-31",
        "growth_plan_status_code": "ACTIVE",
        "next_review_due_at": "2026-06-30",
        "actions": [
          {
            "growth_action_id": "gact_demo_01",
            "action_type_code": "TRAINING",
            "action_title": "数値管理基礎研修",
            "priority_code": "HIGH",
            "completion_percent": 50
          }
        ]
      }
    ]
  },
  "meta": {
    "request_id": "stub_growth_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 9. GET /api/v1/hr/dashboard stub
~~~json
{
  "ok": true,
  "data": {
    "active_cycle_count": 1,
    "pending_hr_review_count": 3,
    "pending_calibration_count": 1,
    "certification_expiring_soon_rate": 12.5,
    "average_current_role_fit_score": 77.2,
    "evaluator_bias_alert_count": 2,
    "successor_coverage_rate": 66.7
  },
  "meta": {
    "request_id": "stub_hr_dash_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 10. representative error stubs

## validation error
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_VALIDATION_INVALID_DATE_RANGE",
    "message": "validation failed",
    "details": [
      {
        "field": "new_expiry_date",
        "reason": "must be greater than or equal to renewed_at"
      }
    ]
  },
  "meta": {
    "request_id": "stub_err_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

## access forbidden
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_ACCESS_FORBIDDEN",
    "message": "forbidden",
    "details": []
  },
  "meta": {
    "request_id": "stub_err_02",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

## state invalid transition
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_STATE_INVALID_TRANSITION",
    "message": "invalid state transition",
    "details": [
      {
        "field": "evaluation_status_code",
        "reason": "current state does not allow submit"
      }
    ]
  },
  "meta": {
    "request_id": "stub_err_03",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 11. stub switching recommendation
state patterns:
- draft pattern
- submitted pattern
- sent back pattern
- approved pattern
- published pattern

recommended strategy:
- one fixture file per state
- shared actor/master baseline
- endpoint response switch by scenario id

# 12. conclusion
TalentGrowth の API stub response set は、
phase A frontend / integration 実装を進める代表 fixture 群として固定する。
EOF

cat > "$APP_ROOT/120.implementation/1200007_TALENT_GROWTH_PHASE_A_IMPLEMENTATION_COMMAND_BLOCK_FIXED.md" <<'EOF'
# TALENT GROWTH PHASE A IMPLEMENTATION COMMAND BLOCK FIXED

status: draft-phase-a-implementation-command-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth phase A の実装着手時に、
次チャットでそのまま開始指示に使える command block / work order を固定するための資料である。

# 1. scope
phase A core evaluation foundation:
- DB baseline
- seed / mock
- dashboard
- certification
- skill
- self review
- manager review
- role requirement
- growth plan
- audit
- outbox / notification
- RLS

# 2. implementation order block
~~~text
【作業開始指示 / TalentGrowth phase A】

対象:
TalentGrowth phase A core evaluation foundation

今回やること:
1. phase A concrete DDL を反映
2. minimum seed / mock dataset を反映
3. API stub response を仮実装
4. employee dashboard read を実装
5. certification CRUD baseline を実装
6. skill CRUD baseline を実装
7. self review save / submit を実装
8. manager review save / submit / send back を実装
9. role requirement CRUD baseline を実装
10. growth plan create / progress を実装
11. audit search baseline を実装
12. outbox / in-app notification baseline を実装
13. RLS baseline を反映
14. release blocking minimum regression を実施

絶対条件:
- publish without approval 禁止
- offline final submit 禁止
- direct notification send bypassing outbox 禁止
- score-changing write の audit 必須
- admin blanket raw evaluation access 禁止
- invalid transition 禁止
- duplicate finalization 禁止
- common components はこの着手では扱わない

レビュー観点:
- UI / UX
- API contract
- DB / DDL
- RLS
- outbox / notification
- regression blockers
~~~

# 3. Termux execution preparation block
~~~bash
mkdir -p /data/data/com.termux/files/home/01.civilization-system/07.applications/TalentGrowth && \
echo "TalentGrowth phase A kickoff ready"
~~~

# 4. DB execution preparation block
~~~bash
psql "$DATABASE_URL" <<'SQL'
select now() as db_now;
SQL
~~~

# 5. first verification checklist
- DDL applied successfully
- minimum seed inserted
- GET /api/v1/me stub works
- GET /api/v1/employee/dashboard stub works
- self review save works
- manager review submit works
- send back works
- audit search returns representative rows
- in-app notification created
- RLS blocks unauthorized access

# 6. early stop conditions
実装を止めて見直す条件:
- state machine と API contract がずれた
- score formula と UI 表示がずれた
- audit_trace_id が write flow に通っていない
- notification が outbox を経由していない
- RLS が未適用のまま UI 実装だけ進んだ
- lock_version conflict path が未実装

# 7. conclusion
TalentGrowth phase A の implementation command block は、
次チャットでそのまま kickoff できる着手文として固定する。
EOF

cat > "$APP_ROOT/90.meta/9018_TALENT_GROWTH_DESIGN_DECISION_NOTE_SQL_STUB_COMMAND_FIXED.md" <<'EOF'
# TALENT GROWTH DESIGN DECISION NOTE
# SQL STUB COMMAND FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
DDL mock kickoff 固定の次に、
phase A concrete SQL execution block,
API stub response set,
phase A implementation command block
を固定した。

# 1. meaning
- 実行寄りの SQL block を置いた
- frontend / integration 用 stub response を置いた
- 次チャット開始指示まで固定した

# 2. fixed focus
- 0907 phase A concrete SQL execution block
- 0812 API stub response set
- 1200007 phase A implementation command block

# 3. next candidate
次の深掘り候補は以下である。
- phase A actual execution one-block fixed
- phase A API route file skeleton fixed
- phase A screen implementation order fixed
EOF

python3 - <<'PY'
from pathlib import Path

app_root = Path("/data/data/com.termux/files/home/01.civilization-system/07.applications/TalentGrowth")

index_path = app_root / "000_TALENT_GROWTH_DESIGN_INDEX.md"
if index_path.exists():
    text = index_path.read_text(encoding="utf-8")
    additions = [
        "- 0907_TALENT_GROWTH_PHASE_A_CONCRETE_SQL_EXECUTION_BLOCK_FIXED.md",
        "- 0812_TALENT_GROWTH_API_STUB_RESPONSE_SET_FIXED.md",
        "- 1200007_TALENT_GROWTH_PHASE_A_IMPLEMENTATION_COMMAND_BLOCK_FIXED.md",
    ]
    for item in additions:
        if item not in text:
            text += "\n" + item
    index_path.write_text(text, encoding="utf-8")

integrated_path = app_root / "00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md"
if integrated_path.exists():
    text = integrated_path.read_text(encoding="utf-8")
    marker = "# 16. recommended next practical move"
    insert_text = """
# 15.5 immediate execution assets
- phase A concrete SQL execution block fixed
- API stub response set fixed
- phase A implementation command block fixed
"""
    if "immediate execution assets" not in text and marker in text:
        text = text.replace(marker, insert_text + "\n" + marker)
    integrated_path.write_text(text, encoding="utf-8")
PY

echo "DONE: TalentGrowth SQL/stub/command docs created"
find "$APP_ROOT" -maxdepth 3 -type f | sort
