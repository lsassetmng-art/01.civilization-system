-- ============================================================
-- MBO SQL FULL INTEGRATED
-- PHASE 1-4 CONSOLIDATED
-- reviewer: Sato
-- ============================================================

-- ============================================================
-- 0. SCHEMA
-- ============================================================

create schema if not exists app_mbo;

-- ============================================================
-- 1. BASE TABLES
-- ============================================================

create table if not exists app_mbo.mbo_period (
  period_id uuid primary key,
  company_id uuid not null,
  period_code text not null,
  period_name text not null,
  start_date date not null,
  end_date date not null,
  status text not null,
  language_code text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null,
  constraint uq_mbo_period_company_code unique (company_id, period_code)
);

create table if not exists app_mbo.mbo_objective (
  objective_id uuid primary key,
  company_id uuid not null,
  period_id uuid not null references app_mbo.mbo_period(period_id),
  owner_user_id uuid not null,
  manager_user_id uuid,
  title text not null,
  objective_category text not null,
  objective_type text not null,
  quantitative_target text,
  qualitative_target text,
  success_criteria text not null,
  priority text not null,
  weight numeric(10,2) not null default 0,
  progress_percent numeric(5,2) not null default 0,
  status text not null,
  start_date date,
  due_date date,
  final_lock_flag boolean not null default false,
  final_locked_at timestamptz,
  source_objective_id uuid,
  source_template_id uuid,
  language_code text not null,
  currency_code text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_action_plan (
  action_plan_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  step_no integer not null,
  step_title text not null,
  step_description text,
  owner_user_id uuid,
  planned_start_at timestamptz,
  planned_end_at timestamptz,
  completion_percent numeric(5,2) not null default 0,
  status text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null,
  constraint uq_mbo_action_plan_objective_step unique (objective_id, step_no)
);

create table if not exists app_mbo.mbo_progress_log (
  progress_log_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  logged_by_user_id uuid not null,
  logged_at timestamptz not null,
  progress_percent numeric(5,2) not null,
  progress_comment text,
  blocker_note text,
  next_action_note text,
  language_code text not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_review_schedule (
  review_schedule_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  review_type text not null,
  planned_review_at timestamptz not null,
  reviewer_user_id uuid not null,
  status text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_review_log (
  review_log_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  review_type text not null,
  reviewer_user_id uuid not null,
  reviewed_at timestamptz not null,
  review_comment text,
  review_result text not null,
  manager_comment_template_id uuid,
  language_code text not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_evaluation (
  evaluation_id uuid primary key,
  objective_id uuid not null unique references app_mbo.mbo_objective(objective_id),
  evaluator_user_id uuid not null,
  evaluation_score numeric(10,2) not null,
  evaluation_comment text not null,
  final_lock_flag boolean not null default false,
  confirmed_at timestamptz,
  erp_sent_at timestamptz,
  erp_send_status text not null default 'not_started',
  language_code text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_objective_template (
  objective_template_id uuid primary key,
  company_id uuid not null,
  department_id uuid,
  template_scope text not null,
  template_name text not null,
  objective_category text not null,
  objective_type text not null,
  default_quantitative_target text,
  default_qualitative_target text,
  default_success_criteria text,
  default_priority text,
  default_weight numeric(10,2),
  language_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_manager_comment_template (
  manager_comment_template_id uuid primary key,
  company_id uuid not null,
  department_id uuid,
  template_name text not null,
  template_body text not null,
  language_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_review_cadence_preset (
  review_cadence_preset_id uuid primary key,
  company_id uuid not null,
  preset_name text not null,
  cadence_type text not null,
  interval_rule text not null,
  language_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_interview_memo (
  interview_memo_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  memo_type text not null,
  memo_at timestamptz not null,
  author_user_id uuid not null,
  memo_body text not null,
  language_code text not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_evidence_reference (
  evidence_reference_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  progress_log_id uuid,
  review_log_id uuid,
  reference_type text not null,
  reference_uri text not null,
  reference_label text,
  uploaded_at timestamptz not null
);

create table if not exists app_mbo.mbo_objective_task_link (
  objective_task_link_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  linked_task_id uuid not null,
  link_role text not null,
  linked_at timestamptz not null
);

create table if not exists app_mbo.mbo_objective_project_link (
  objective_project_link_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  linked_project_id uuid not null,
  link_role text not null,
  linked_at timestamptz not null
);

create table if not exists app_mbo.mbo_evaluation_calibration_record (
  evaluation_calibration_record_id uuid primary key,
  period_id uuid not null references app_mbo.mbo_period(period_id),
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  evaluation_id uuid not null references app_mbo.mbo_evaluation(evaluation_id),
  calibration_status text not null,
  calibration_comment text,
  calibrated_by_user_id uuid not null,
  calibrated_at timestamptz not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_aggregation_export_job (
  aggregation_export_job_id uuid primary key,
  requested_by_user_id uuid not null,
  export_scope text not null,
  export_format text not null,
  job_status text not null,
  requested_at timestamptz not null,
  completed_at timestamptz,
  output_uri text
);

create table if not exists app_mbo.mbo_reminder_batch_job (
  reminder_batch_job_id uuid primary key,
  requested_by_user_id uuid not null,
  reminder_type text not null,
  target_scope text not null,
  job_status text not null,
  requested_at timestamptz not null,
  completed_at timestamptz
);

create table if not exists app_mbo.mbo_erp_transmission_history (
  transmission_history_id uuid primary key,
  transmission_id text not null,
  transmission_version integer not null,
  company_id uuid not null,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  evaluation_id uuid not null references app_mbo.mbo_evaluation(evaluation_id),
  sender_user_id uuid not null,
  erp_send_status text not null,
  request_id text not null,
  payload_snapshot_json jsonb not null,
  sent_at timestamptz,
  failed_at timestamptz,
  created_at timestamptz not null,
  constraint uq_mbo_erp_transmission_id unique (transmission_id)
);

create table if not exists app_mbo.mbo_erp_resend_job (
  erp_resend_job_id uuid primary key,
  transmission_history_id uuid not null references app_mbo.mbo_erp_transmission_history(transmission_history_id),
  requested_by_user_id uuid not null,
  resend_reason text not null,
  resend_status text not null,
  requested_at timestamptz not null,
  completed_at timestamptz
);

create table if not exists app_mbo.mbo_reopen_request (
  reopen_request_id uuid primary key,
  objective_id uuid not null references app_mbo.mbo_objective(objective_id),
  evaluation_id uuid not null references app_mbo.mbo_evaluation(evaluation_id),
  requested_by_user_id uuid not null,
  requested_at timestamptz not null,
  reopen_reason_code text not null,
  reopen_reason_detail text not null,
  current_state text not null,
  target_state text not null,
  reopen_scope text not null,
  reopen_status text not null,
  approval_required_flag boolean not null default true,
  created_at timestamptz not null,
  updated_at timestamptz not null
);

create table if not exists app_mbo.mbo_reopen_approval_log (
  reopen_approval_log_id uuid primary key,
  reopen_request_id uuid not null references app_mbo.mbo_reopen_request(reopen_request_id),
  approver_user_id uuid not null,
  approval_action text not null,
  approval_comment text,
  approved_at timestamptz not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_reopen_execution_log (
  reopen_execution_log_id uuid primary key,
  reopen_request_id uuid not null references app_mbo.mbo_reopen_request(reopen_request_id),
  executor_user_id uuid not null,
  executed_from_state text not null,
  executed_to_state text not null,
  executed_at timestamptz not null,
  created_at timestamptz not null
);

create table if not exists app_mbo.mbo_erp_impact_note (
  erp_impact_note_id uuid primary key,
  reopen_request_id uuid not null references app_mbo.mbo_reopen_request(reopen_request_id),
  reviewer_user_id uuid not null,
  impact_note text not null,
  reviewed_at timestamptz not null,
  created_at timestamptz not null
);

-- ============================================================
-- 2. MASTER TABLES
-- ============================================================

create table if not exists app_mbo.mbo_master_objective_status (
  status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_schedule_status (
  status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_type (
  review_type_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_result (
  review_result_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_priority (
  priority_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_template_scope (
  template_scope_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_job_status (
  job_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_erp_send_status (
  erp_send_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_status (
  reopen_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_reason (
  reopen_reason_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_scope (
  reopen_scope_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reminder_type (
  reminder_type_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_export_format (
  export_format_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_link_role (
  link_role_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

-- ============================================================
-- 3. LATE FOREIGN KEYS
-- ============================================================

alter table app_mbo.mbo_objective
  add constraint fk_mbo_objective_source_objective
  foreign key (source_objective_id)
  references app_mbo.mbo_objective(objective_id);

alter table app_mbo.mbo_objective
  add constraint fk_mbo_objective_source_template
  foreign key (source_template_id)
  references app_mbo.mbo_objective_template(objective_template_id);

alter table app_mbo.mbo_review_log
  add constraint fk_mbo_review_log_comment_template
  foreign key (manager_comment_template_id)
  references app_mbo.mbo_manager_comment_template(manager_comment_template_id);

alter table app_mbo.mbo_evidence_reference
  add constraint fk_mbo_evidence_reference_progress_log
  foreign key (progress_log_id)
  references app_mbo.mbo_progress_log(progress_log_id);

alter table app_mbo.mbo_evidence_reference
  add constraint fk_mbo_evidence_reference_review_log
  foreign key (review_log_id)
  references app_mbo.mbo_review_log(review_log_id);

-- ============================================================
-- 4. CHECK CONSTRAINTS
-- ============================================================

alter table app_mbo.mbo_period
  add constraint ck_mbo_period_date_range
  check (start_date <= end_date);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_weight_nonnegative
  check (weight >= 0);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_progress_range
  check (progress_percent >= 0 and progress_percent <= 100);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_due_after_start
  check (
    start_date is null
    or due_date is null
    or start_date <= due_date
  );

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_final_lock_timestamp
  check (
    (final_lock_flag = false)
    or (final_lock_flag = true and final_locked_at is not null)
  );

alter table app_mbo.mbo_action_plan
  add constraint ck_mbo_action_plan_completion_range
  check (completion_percent >= 0 and completion_percent <= 100);

alter table app_mbo.mbo_action_plan
  add constraint ck_mbo_action_plan_end_after_start
  check (
    planned_start_at is null
    or planned_end_at is null
    or planned_start_at <= planned_end_at
  );

alter table app_mbo.mbo_progress_log
  add constraint ck_mbo_progress_log_progress_range
  check (progress_percent >= 0 and progress_percent <= 100);

alter table app_mbo.mbo_evaluation
  add constraint ck_mbo_evaluation_confirmed_when_locked
  check (
    (final_lock_flag = false)
    or (final_lock_flag = true and confirmed_at is not null)
  );

alter table app_mbo.mbo_evidence_reference
  add constraint ck_mbo_evidence_reference_parent_exists
  check (
    progress_log_id is not null
    or review_log_id is not null
  );

-- ============================================================
-- 5. INDEXES
-- ============================================================

create index if not exists idx_mbo_period_company_status
  on app_mbo.mbo_period(company_id, status);

create index if not exists idx_mbo_objective_period
  on app_mbo.mbo_objective(period_id);

create index if not exists idx_mbo_objective_owner
  on app_mbo.mbo_objective(owner_user_id);

create index if not exists idx_mbo_objective_manager
  on app_mbo.mbo_objective(manager_user_id);

create index if not exists idx_mbo_objective_status
  on app_mbo.mbo_objective(status);

create index if not exists idx_mbo_objective_period_status
  on app_mbo.mbo_objective(period_id, status);

create index if not exists idx_mbo_objective_company_period_owner
  on app_mbo.mbo_objective(company_id, period_id, owner_user_id);

create index if not exists idx_mbo_action_plan_objective
  on app_mbo.mbo_action_plan(objective_id);

create index if not exists idx_mbo_progress_log_objective_logged_at
  on app_mbo.mbo_progress_log(objective_id, logged_at desc);

create index if not exists idx_mbo_review_schedule_objective
  on app_mbo.mbo_review_schedule(objective_id);

create index if not exists idx_mbo_review_schedule_reviewer_time
  on app_mbo.mbo_review_schedule(reviewer_user_id, planned_review_at);

create index if not exists idx_mbo_review_schedule_status_time
  on app_mbo.mbo_review_schedule(status, planned_review_at);

create index if not exists idx_mbo_review_log_objective_reviewed_at
  on app_mbo.mbo_review_log(objective_id, reviewed_at desc);

create index if not exists idx_mbo_evaluation_objective
  on app_mbo.mbo_evaluation(objective_id);

create index if not exists idx_mbo_evaluation_confirmed_at
  on app_mbo.mbo_evaluation(confirmed_at);

create index if not exists idx_mbo_evaluation_erp_send_status
  on app_mbo.mbo_evaluation(erp_send_status);

create index if not exists idx_mbo_objective_template_company_scope_active
  on app_mbo.mbo_objective_template(company_id, template_scope, active_flag);

create index if not exists idx_mbo_manager_comment_template_company_dept_active
  on app_mbo.mbo_manager_comment_template(company_id, department_id, active_flag);

create index if not exists idx_mbo_review_cadence_preset_company_active
  on app_mbo.mbo_review_cadence_preset(company_id, active_flag);

create index if not exists idx_mbo_interview_memo_objective_memo_at
  on app_mbo.mbo_interview_memo(objective_id, memo_at desc);

create index if not exists idx_mbo_evidence_reference_objective
  on app_mbo.mbo_evidence_reference(objective_id);

create index if not exists idx_mbo_objective_task_link_objective
  on app_mbo.mbo_objective_task_link(objective_id);

create index if not exists idx_mbo_objective_project_link_objective
  on app_mbo.mbo_objective_project_link(objective_id);

create index if not exists idx_mbo_evaluation_calibration_period
  on app_mbo.mbo_evaluation_calibration_record(period_id);

create index if not exists idx_mbo_aggregation_export_job_requester_status
  on app_mbo.mbo_aggregation_export_job(requested_by_user_id, job_status);

create index if not exists idx_mbo_reminder_batch_job_requester_status
  on app_mbo.mbo_reminder_batch_job(requested_by_user_id, job_status);

create index if not exists idx_mbo_erp_transmission_history_objective
  on app_mbo.mbo_erp_transmission_history(objective_id);

create index if not exists idx_mbo_erp_transmission_history_evaluation
  on app_mbo.mbo_erp_transmission_history(evaluation_id);

create index if not exists idx_mbo_erp_transmission_history_status
  on app_mbo.mbo_erp_transmission_history(erp_send_status);

create index if not exists idx_mbo_erp_resend_job_transmission
  on app_mbo.mbo_erp_resend_job(transmission_history_id);

create index if not exists idx_mbo_reopen_request_objective_status
  on app_mbo.mbo_reopen_request(objective_id, reopen_status);

create index if not exists idx_mbo_reopen_request_evaluation
  on app_mbo.mbo_reopen_request(evaluation_id);

create index if not exists idx_mbo_reopen_approval_log_request
  on app_mbo.mbo_reopen_approval_log(reopen_request_id);

create index if not exists idx_mbo_reopen_execution_log_request
  on app_mbo.mbo_reopen_execution_log(reopen_request_id);

create index if not exists idx_mbo_erp_impact_note_request
  on app_mbo.mbo_erp_impact_note(reopen_request_id);

-- ============================================================
-- 6. UPDATED_AT FUNCTION AND TRIGGERS
-- ============================================================

create or replace function app_mbo.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at := now();
  return new;
end;
$$;

drop trigger if exists trg_mbo_period_set_updated_at on app_mbo.mbo_period;
create trigger trg_mbo_period_set_updated_at
before update on app_mbo.mbo_period
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_objective_set_updated_at on app_mbo.mbo_objective;
create trigger trg_mbo_objective_set_updated_at
before update on app_mbo.mbo_objective
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_action_plan_set_updated_at on app_mbo.mbo_action_plan;
create trigger trg_mbo_action_plan_set_updated_at
before update on app_mbo.mbo_action_plan
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_review_schedule_set_updated_at on app_mbo.mbo_review_schedule;
create trigger trg_mbo_review_schedule_set_updated_at
before update on app_mbo.mbo_review_schedule
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_evaluation_set_updated_at on app_mbo.mbo_evaluation;
create trigger trg_mbo_evaluation_set_updated_at
before update on app_mbo.mbo_evaluation
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_objective_template_set_updated_at on app_mbo.mbo_objective_template;
create trigger trg_mbo_objective_template_set_updated_at
before update on app_mbo.mbo_objective_template
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_manager_comment_template_set_updated_at on app_mbo.mbo_manager_comment_template;
create trigger trg_mbo_manager_comment_template_set_updated_at
before update on app_mbo.mbo_manager_comment_template
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_review_cadence_preset_set_updated_at on app_mbo.mbo_review_cadence_preset;
create trigger trg_mbo_review_cadence_preset_set_updated_at
before update on app_mbo.mbo_review_cadence_preset
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_reopen_request_set_updated_at on app_mbo.mbo_reopen_request;
create trigger trg_mbo_reopen_request_set_updated_at
before update on app_mbo.mbo_reopen_request
for each row
execute function app_mbo.set_updated_at();

-- ============================================================
-- 7. RLS
-- ============================================================

alter table app_mbo.mbo_period enable row level security;
alter table app_mbo.mbo_objective enable row level security;
alter table app_mbo.mbo_action_plan enable row level security;
alter table app_mbo.mbo_progress_log enable row level security;
alter table app_mbo.mbo_review_schedule enable row level security;
alter table app_mbo.mbo_review_log enable row level security;
alter table app_mbo.mbo_evaluation enable row level security;
alter table app_mbo.mbo_objective_template enable row level security;
alter table app_mbo.mbo_manager_comment_template enable row level security;
alter table app_mbo.mbo_review_cadence_preset enable row level security;
alter table app_mbo.mbo_interview_memo enable row level security;
alter table app_mbo.mbo_evidence_reference enable row level security;
alter table app_mbo.mbo_objective_task_link enable row level security;
alter table app_mbo.mbo_objective_project_link enable row level security;
alter table app_mbo.mbo_evaluation_calibration_record enable row level security;
alter table app_mbo.mbo_aggregation_export_job enable row level security;
alter table app_mbo.mbo_reminder_batch_job enable row level security;
alter table app_mbo.mbo_erp_transmission_history enable row level security;
alter table app_mbo.mbo_erp_resend_job enable row level security;
alter table app_mbo.mbo_reopen_request enable row level security;
alter table app_mbo.mbo_reopen_approval_log enable row level security;
alter table app_mbo.mbo_reopen_execution_log enable row level security;
alter table app_mbo.mbo_erp_impact_note enable row level security;

create or replace function app_mbo.current_user_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('request.jwt.claims', true)::jsonb ->> 'sub', '')::uuid
$$;

create or replace function app_mbo.current_app_role()
returns text
language sql
stable
as $$
  select current_setting('request.jwt.claims', true)::jsonb ->> 'app_role'
$$;

create or replace function app_mbo.current_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('request.jwt.claims', true)::jsonb ->> 'company_id', '')::uuid
$$;

create or replace function app_mbo.is_role(p_role text)
returns boolean
language sql
stable
as $$
  select app_mbo.current_app_role() = p_role
$$;

create or replace function app_mbo.is_any_role(p_roles text[])
returns boolean
language sql
stable
as $$
  select app_mbo.current_app_role() = any(p_roles)
$$;

drop policy if exists p_mbo_period_select on app_mbo.mbo_period;
create policy p_mbo_period_select
on app_mbo.mbo_period
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_objective_select on app_mbo.mbo_objective;
create policy p_mbo_objective_select
on app_mbo.mbo_objective
for select
using (
  company_id = app_mbo.current_company_id()
  and (
    owner_user_id = app_mbo.current_user_id()
    or manager_user_id = app_mbo.current_user_id()
    or app_mbo.is_any_role(array['evaluator','HR_operator','executive_viewer','system_auditor'])
  )
);

drop policy if exists p_mbo_objective_insert on app_mbo.mbo_objective;
create policy p_mbo_objective_insert
on app_mbo.mbo_objective
for insert
with check (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
);

drop policy if exists p_mbo_objective_update on app_mbo.mbo_objective;
create policy p_mbo_objective_update
on app_mbo.mbo_objective
for update
using (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
  and final_lock_flag = false
)
with check (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and final_lock_flag = false
);

drop policy if exists p_mbo_action_plan_select on app_mbo.mbo_action_plan;
create policy p_mbo_action_plan_select
on app_mbo.mbo_action_plan
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array['evaluator','HR_operator','executive_viewer','system_auditor'])
      )
  )
);

drop policy if exists p_mbo_action_plan_write on app_mbo.mbo_action_plan;
create policy p_mbo_action_plan_write
on app_mbo.mbo_action_plan
for all
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and app_mbo.is_role('objective_owner')
      and o.final_lock_flag = false
  )
)
with check (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and app_mbo.is_role('objective_owner')
      and o.final_lock_flag = false
  )
);

drop policy if exists p_mbo_progress_log_select on app_mbo.mbo_progress_log;
create policy p_mbo_progress_log_select
on app_mbo.mbo_progress_log
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_progress_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array['evaluator','HR_operator','executive_viewer','system_auditor'])
      )
  )
);

drop policy if exists p_mbo_progress_log_insert on app_mbo.mbo_progress_log;
create policy p_mbo_progress_log_insert
on app_mbo.mbo_progress_log
for insert
with check (
  logged_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
  and exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_progress_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and o.final_lock_flag = false
  )
);

drop policy if exists p_mbo_review_schedule_select on app_mbo.mbo_review_schedule;
create policy p_mbo_review_schedule_select
on app_mbo.mbo_review_schedule
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or mbo_review_schedule.reviewer_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array['HR_operator','executive_viewer','system_auditor'])
      )
  )
);

drop policy if exists p_mbo_review_schedule_write on app_mbo.mbo_review_schedule;
create policy p_mbo_review_schedule_write
on app_mbo.mbo_review_schedule
for all
using (
  app_mbo.is_any_role(array['manager','HR_operator'])
  and exists (
    select 1 from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
)
with check (
  app_mbo.is_any_role(array['manager','HR_operator'])
  and exists (
    select 1 from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
);

drop policy if exists p_mbo_review_log_select on app_mbo.mbo_review_log;
create policy p_mbo_review_log_select
on app_mbo.mbo_review_log
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array['evaluator','HR_operator','executive_viewer','system_auditor'])
      )
  )
);

drop policy if exists p_mbo_review_log_insert on app_mbo.mbo_review_log;
create policy p_mbo_review_log_insert
on app_mbo.mbo_review_log
for insert
with check (
  reviewer_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('manager')
  and exists (
    select 1 from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_log.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
);

drop policy if exists p_mbo_evaluation_select on app_mbo.mbo_evaluation;
create policy p_mbo_evaluation_select
on app_mbo.mbo_evaluation
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_evaluation.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or mbo_evaluation.evaluator_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array['HR_operator','executive_viewer','system_auditor'])
      )
  )
);

drop policy if exists p_mbo_evaluation_write on app_mbo.mbo_evaluation;
create policy p_mbo_evaluation_write
on app_mbo.mbo_evaluation
for all
using (
  evaluator_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('evaluator')
  and final_lock_flag = false
)
with check (
  evaluator_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('evaluator')
);

drop policy if exists p_mbo_objective_template_select on app_mbo.mbo_objective_template;
create policy p_mbo_objective_template_select
on app_mbo.mbo_objective_template
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_objective_template_write on app_mbo.mbo_objective_template;
create policy p_mbo_objective_template_write
on app_mbo.mbo_objective_template
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

drop policy if exists p_mbo_manager_comment_template_select on app_mbo.mbo_manager_comment_template;
create policy p_mbo_manager_comment_template_select
on app_mbo.mbo_manager_comment_template
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_manager_comment_template_write on app_mbo.mbo_manager_comment_template;
create policy p_mbo_manager_comment_template_write
on app_mbo.mbo_manager_comment_template
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

drop policy if exists p_mbo_review_cadence_preset_select on app_mbo.mbo_review_cadence_preset;
create policy p_mbo_review_cadence_preset_select
on app_mbo.mbo_review_cadence_preset
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_review_cadence_preset_write on app_mbo.mbo_review_cadence_preset;
create policy p_mbo_review_cadence_preset_write
on app_mbo.mbo_review_cadence_preset
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

drop policy if exists p_mbo_hr_operator_jobs_select on app_mbo.mbo_aggregation_export_job;
create policy p_mbo_hr_operator_jobs_select
on app_mbo.mbo_aggregation_export_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator','system_auditor'])
);

drop policy if exists p_mbo_hr_operator_jobs_insert on app_mbo.mbo_aggregation_export_job;
create policy p_mbo_hr_operator_jobs_insert
on app_mbo.mbo_aggregation_export_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_reminder_batch_job_select on app_mbo.mbo_reminder_batch_job;
create policy p_mbo_reminder_batch_job_select
on app_mbo.mbo_reminder_batch_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator','system_auditor'])
);

drop policy if exists p_mbo_reminder_batch_job_insert on app_mbo.mbo_reminder_batch_job;
create policy p_mbo_reminder_batch_job_insert
on app_mbo.mbo_reminder_batch_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_erp_transmission_history_select on app_mbo.mbo_erp_transmission_history;
create policy p_mbo_erp_transmission_history_select
on app_mbo.mbo_erp_transmission_history
for select
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_any_role(array['HR_operator','system_auditor'])
);

drop policy if exists p_mbo_erp_resend_job_select on app_mbo.mbo_erp_resend_job;
create policy p_mbo_erp_resend_job_select
on app_mbo.mbo_erp_resend_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator','system_auditor'])
);

drop policy if exists p_mbo_erp_resend_job_insert on app_mbo.mbo_erp_resend_job;
create policy p_mbo_erp_resend_job_insert
on app_mbo.mbo_erp_resend_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_reopen_request_select on app_mbo.mbo_reopen_request;
create policy p_mbo_reopen_request_select
on app_mbo.mbo_reopen_request
for select
using (
  app_mbo.is_any_role(array['HR_operator','system_auditor','manager','evaluator'])
  or requested_by_user_id = app_mbo.current_user_id()
);

drop policy if exists p_mbo_reopen_request_insert on app_mbo.mbo_reopen_request;
create policy p_mbo_reopen_request_insert
on app_mbo.mbo_reopen_request
for insert
with check (requested_by_user_id = app_mbo.current_user_id());

drop policy if exists p_mbo_reopen_approval_log_select on app_mbo.mbo_reopen_approval_log;
create policy p_mbo_reopen_approval_log_select
on app_mbo.mbo_reopen_approval_log
for select
using (app_mbo.is_any_role(array['HR_operator','system_auditor','manager','evaluator']));

drop policy if exists p_mbo_reopen_approval_log_insert on app_mbo.mbo_reopen_approval_log;
create policy p_mbo_reopen_approval_log_insert
on app_mbo.mbo_reopen_approval_log
for insert
with check (app_mbo.is_any_role(array['HR_operator','manager']));

drop policy if exists p_mbo_reopen_execution_log_select on app_mbo.mbo_reopen_execution_log;
create policy p_mbo_reopen_execution_log_select
on app_mbo.mbo_reopen_execution_log
for select
using (app_mbo.is_any_role(array['HR_operator','system_auditor']));

drop policy if exists p_mbo_reopen_execution_log_insert on app_mbo.mbo_reopen_execution_log;
create policy p_mbo_reopen_execution_log_insert
on app_mbo.mbo_reopen_execution_log
for insert
with check (app_mbo.is_role('HR_operator'));

drop policy if exists p_mbo_erp_impact_note_select on app_mbo.mbo_erp_impact_note;
create policy p_mbo_erp_impact_note_select
on app_mbo.mbo_erp_impact_note
for select
using (app_mbo.is_any_role(array['HR_operator','system_auditor']));

drop policy if exists p_mbo_erp_impact_note_insert on app_mbo.mbo_erp_impact_note;
create policy p_mbo_erp_impact_note_insert
on app_mbo.mbo_erp_impact_note
for insert
with check (app_mbo.is_role('HR_operator'));

-- ============================================================
-- 8. HELPER VIEWS
-- ============================================================

create or replace view app_mbo.v_mbo_objective_latest_progress as
select
  o.objective_id,
  p.progress_log_id,
  p.logged_by_user_id,
  p.logged_at,
  p.progress_percent,
  p.progress_comment,
  p.blocker_note,
  p.next_action_note
from app_mbo.mbo_objective o
left join lateral (
  select pl.*
  from app_mbo.mbo_progress_log pl
  where pl.objective_id = o.objective_id
  order by pl.logged_at desc, pl.created_at desc
  limit 1
) p on true;

create or replace view app_mbo.v_mbo_objective_latest_review as
select
  o.objective_id,
  r.review_log_id,
  r.review_type,
  r.reviewer_user_id,
  r.reviewed_at,
  r.review_result,
  r.review_comment
from app_mbo.mbo_objective o
left join lateral (
  select rl.*
  from app_mbo.mbo_review_log rl
  where rl.objective_id = o.objective_id
  order by rl.reviewed_at desc, rl.created_at desc
  limit 1
) r on true;

create or replace view app_mbo.v_mbo_objective_linkage_summary as
select
  o.objective_id,
  coalesce(t.task_count, 0) as linked_task_count,
  coalesce(p.project_count, 0) as linked_project_count,
  coalesce(e.evidence_count, 0) as evidence_reference_count,
  coalesce(m.memo_count, 0) as interview_memo_count
from app_mbo.mbo_objective o
left join (
  select objective_id, count(*) as task_count
  from app_mbo.mbo_objective_task_link
  group by objective_id
) t on t.objective_id = o.objective_id
left join (
  select objective_id, count(*) as project_count
  from app_mbo.mbo_objective_project_link
  group by objective_id
) p on p.objective_id = o.objective_id
left join (
  select objective_id, count(*) as evidence_count
  from app_mbo.mbo_evidence_reference
  group by objective_id
) e on e.objective_id = o.objective_id
left join (
  select objective_id, count(*) as memo_count
  from app_mbo.mbo_interview_memo
  group by objective_id
) m on m.objective_id = o.objective_id;

create or replace view app_mbo.v_mbo_review_schedule_status as
select
  rs.review_schedule_id,
  rs.objective_id,
  rs.review_type,
  rs.planned_review_at,
  rs.reviewer_user_id,
  rs.status as stored_status,
  case
    when rs.status = 'cancelled' then 'cancelled'
    when rs.status = 'completed' then 'completed'
    when rs.status = 'planned' and rs.planned_review_at < now() then 'overdue'
    else rs.status
  end as effective_status
from app_mbo.mbo_review_schedule rs;

create or replace view app_mbo.v_mbo_dashboard_objective_core as
select
  o.objective_id,
  o.company_id,
  o.period_id,
  o.owner_user_id,
  o.manager_user_id,
  o.title,
  o.objective_category,
  o.objective_type,
  o.priority,
  o.weight,
  o.progress_percent,
  o.status,
  o.start_date,
  o.due_date,
  o.final_lock_flag,
  o.final_locked_at,
  o.language_code,
  o.currency_code,
  lp.logged_at as latest_progress_logged_at,
  lr.reviewed_at as latest_reviewed_at,
  lr.review_result as latest_review_result,
  ls.linked_task_count,
  ls.linked_project_count,
  ls.evidence_reference_count,
  ls.interview_memo_count,
  ev.evaluation_id,
  ev.evaluator_user_id,
  ev.evaluation_score,
  ev.confirmed_at,
  ev.erp_send_status
from app_mbo.mbo_objective o
left join app_mbo.v_mbo_objective_latest_progress lp
  on lp.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_latest_review lr
  on lr.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_linkage_summary ls
  on ls.objective_id = o.objective_id
left join app_mbo.mbo_evaluation ev
  on ev.objective_id = o.objective_id;

create or replace view app_mbo.v_mbo_objective_detail_api as
select
  dc.objective_id,
  dc.company_id,
  dc.period_id,
  dc.owner_user_id,
  dc.manager_user_id,
  dc.title,
  dc.objective_category,
  dc.objective_type,
  dc.priority,
  dc.weight,
  dc.progress_percent,
  dc.status,
  dc.start_date,
  dc.due_date,
  dc.final_lock_flag,
  dc.final_locked_at,
  dc.language_code,
  dc.currency_code,
  dc.latest_progress_logged_at,
  dc.latest_reviewed_at,
  dc.latest_review_result,
  dc.linked_task_count,
  dc.linked_project_count,
  dc.evidence_reference_count,
  dc.interview_memo_count,
  dc.evaluation_id,
  dc.evaluator_user_id,
  dc.evaluation_score,
  dc.confirmed_at,
  dc.erp_send_status,
  e.evaluation_comment
from app_mbo.v_mbo_dashboard_objective_core dc
left join app_mbo.mbo_evaluation e
  on e.evaluation_id = dc.evaluation_id;

create or replace view app_mbo.v_mbo_objective_list_api as
select
  o.objective_id,
  o.company_id,
  o.period_id,
  o.owner_user_id,
  o.manager_user_id,
  o.title,
  o.objective_category,
  o.objective_type,
  o.priority,
  o.weight,
  o.progress_percent,
  o.status,
  o.due_date,
  o.final_lock_flag,
  o.language_code,
  o.currency_code,
  lp.logged_at as latest_progress_logged_at,
  lr.reviewed_at as latest_reviewed_at,
  ev.confirmed_at,
  ev.erp_send_status
from app_mbo.mbo_objective o
left join app_mbo.v_mbo_objective_latest_progress lp
  on lp.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_latest_review lr
  on lr.objective_id = o.objective_id
left join app_mbo.mbo_evaluation ev
  on ev.objective_id = o.objective_id;

create or replace view app_mbo.v_mbo_review_schedule_api as
select
  rs.review_schedule_id,
  rs.objective_id,
  rs.review_type,
  rs.planned_review_at,
  rs.reviewer_user_id,
  rs.stored_status,
  rs.effective_status
from app_mbo.v_mbo_review_schedule_status rs;

create or replace view app_mbo.v_mbo_erp_failure_api as
select
  th.transmission_history_id,
  th.transmission_id,
  th.objective_id,
  th.evaluation_id,
  th.sender_user_id,
  th.erp_send_status,
  th.request_id,
  th.sent_at,
  th.failed_at,
  o.title,
  o.period_id,
  e.confirmed_at
from app_mbo.mbo_erp_transmission_history th
join app_mbo.mbo_objective o
  on o.objective_id = th.objective_id
join app_mbo.mbo_evaluation e
  on e.evaluation_id = th.evaluation_id
where th.erp_send_status = 'ERP_failed';

create or replace view app_mbo.v_mbo_reopen_queue_api as
select
  rr.reopen_request_id,
  rr.objective_id,
  rr.evaluation_id,
  rr.requested_by_user_id,
  rr.requested_at,
  rr.reopen_reason_code,
  rr.current_state,
  rr.target_state,
  rr.reopen_scope,
  rr.reopen_status,
  o.title,
  o.company_id,
  o.period_id
from app_mbo.mbo_reopen_request rr
join app_mbo.mbo_objective o
  on o.objective_id = rr.objective_id;

-- ============================================================
-- 9. VALIDATION / OPERATION VIEWS
-- ============================================================

create or replace view app_mbo.v_mbo_invalid_objective_status as
select o.*
from app_mbo.mbo_objective o
left join app_mbo.mbo_master_objective_status m
  on m.status_code = o.status
where m.status_code is null;

create or replace view app_mbo.v_mbo_invalid_review_schedule_status as
select rs.*
from app_mbo.mbo_review_schedule rs
left join app_mbo.mbo_master_review_schedule_status m
  on m.status_code = rs.status
where m.status_code is null;

create or replace view app_mbo.v_mbo_invalid_priority as
select o.*
from app_mbo.mbo_objective o
left join app_mbo.mbo_master_priority m
  on m.priority_code = o.priority
where m.priority_code is null;

create or replace view app_mbo.v_mbo_locked_objective_inconsistency as
select
  o.objective_id,
  o.final_lock_flag as objective_final_lock_flag,
  o.final_locked_at,
  e.evaluation_id,
  e.final_lock_flag as evaluation_final_lock_flag,
  e.confirmed_at
from app_mbo.mbo_objective o
left join app_mbo.mbo_evaluation e
  on e.objective_id = o.objective_id
where
  (o.final_lock_flag = true and o.final_locked_at is null)
  or (e.final_lock_flag = true and e.confirmed_at is null)
  or (o.final_lock_flag <> coalesce(e.final_lock_flag, false));

create or replace view app_mbo.v_mbo_overdue_planned_reviews as
select *
from app_mbo.v_mbo_review_schedule_status
where effective_status = 'overdue';

create or replace view app_mbo.v_mbo_erp_failed_transmissions as
select *
from app_mbo.mbo_erp_transmission_history
where erp_send_status = 'ERP_failed';

create or replace view app_mbo.v_mbo_reopen_approval_inconsistency as
select rr.*
from app_mbo.mbo_reopen_request rr
where rr.reopen_status = 'approved'
  and not exists (
    select 1
    from app_mbo.mbo_reopen_approval_log al
    where al.reopen_request_id = rr.reopen_request_id
  );

create or replace view app_mbo.v_mbo_current_period_objectives as
select o.*
from app_mbo.mbo_objective o
join app_mbo.mbo_period p
  on p.period_id = o.period_id
where p.status = 'open';

create or replace view app_mbo.v_mbo_objective_work_queue as
select
  dc.objective_id,
  dc.company_id,
  dc.period_id,
  dc.owner_user_id,
  dc.manager_user_id,
  dc.title,
  dc.status,
  dc.progress_percent,
  dc.latest_progress_logged_at,
  dc.latest_reviewed_at,
  dc.confirmed_at,
  dc.erp_send_status,
  case
    when dc.erp_send_status = 'ERP_failed' then 'erp_failure'
    when dc.status = 'evaluation_drafted' then 'pending_evaluation_confirmation'
    when dc.status in ('active', 'in_review')
         and (dc.latest_progress_logged_at is null or dc.latest_progress_logged_at < now() - interval '7 days')
      then 'stale_progress'
    else 'normal'
  end as work_attention_type
from app_mbo.v_mbo_dashboard_objective_core dc;

create or replace view app_mbo.v_mbo_dashboard_counts as
select
  company_id,
  period_id,
  count(*) as total_objectives,
  count(*) filter (where status = 'draft') as draft_objectives,
  count(*) filter (where status = 'active') as active_objectives,
  count(*) filter (where status = 'in_review') as in_review_objectives,
  count(*) filter (where status = 'evaluation_drafted') as evaluation_drafted_objectives,
  count(*) filter (where status = 'finalized') as finalized_objectives,
  count(*) filter (where status = 'transferred') as transferred_objectives,
  count(*) filter (
    where status in ('active', 'in_review')
      and (latest_progress_logged_at is null or latest_progress_logged_at < now() - interval '7 days')
  ) as stale_progress_count,
  count(*) filter (where erp_send_status = 'ERP_failed') as erp_failure_count
from app_mbo.v_mbo_dashboard_objective_core
group by company_id, period_id;

-- ============================================================
-- 10. SEED DATA
-- ============================================================

insert into app_mbo.mbo_master_objective_status (status_code, sort_order, active_flag) values
  ('draft', 10, true),
  ('active', 20, true),
  ('in_review', 30, true),
  ('evaluation_drafted', 40, true),
  ('finalized', 50, true),
  ('transferred', 60, true)
on conflict (status_code) do nothing;

insert into app_mbo.mbo_master_review_schedule_status (status_code, sort_order, active_flag) values
  ('planned', 10, true),
  ('completed', 20, true),
  ('cancelled', 30, true),
  ('overdue', 40, true)
on conflict (status_code) do nothing;

insert into app_mbo.mbo_master_review_type (review_type_code, sort_order, active_flag) values
  ('weekly', 10, true),
  ('monthly', 20, true),
  ('midterm', 30, true),
  ('final', 40, true)
on conflict (review_type_code) do nothing;

insert into app_mbo.mbo_master_review_result (review_result_code, sort_order, active_flag) values
  ('continue', 10, true),
  ('adjust', 20, true),
  ('escalate', 30, true),
  ('complete', 40, true)
on conflict (review_result_code) do nothing;

insert into app_mbo.mbo_master_priority (priority_code, sort_order, active_flag) values
  ('low', 10, true),
  ('medium', 20, true),
  ('high', 30, true),
  ('critical', 40, true)
on conflict (priority_code) do nothing;

insert into app_mbo.mbo_master_template_scope (template_scope_code, sort_order, active_flag) values
  ('personal', 10, true),
  ('department', 20, true),
  ('company', 30, true)
on conflict (template_scope_code) do nothing;

insert into app_mbo.mbo_master_job_status (job_status_code, sort_order, active_flag) values
  ('queued', 10, true),
  ('running', 20, true),
  ('completed', 30, true),
  ('failed', 40, true)
on conflict (job_status_code) do nothing;

insert into app_mbo.mbo_master_erp_send_status (erp_send_status_code, sort_order, active_flag) values
  ('not_started', 10, true),
  ('ERP_sent', 20, true),
  ('ERP_failed', 30, true)
on conflict (erp_send_status_code) do nothing;

insert into app_mbo.mbo_master_reopen_status (reopen_status_code, sort_order, active_flag) values
  ('requested', 10, true),
  ('under_review', 20, true),
  ('approved', 30, true),
  ('rejected', 40, true),
  ('executed', 50, true),
  ('closed', 60, true)
on conflict (reopen_status_code) do nothing;

insert into app_mbo.mbo_master_reopen_reason (reopen_reason_code, sort_order, active_flag) values
  ('material_input_error', 10, true),
  ('evaluator_error', 20, true),
  ('governance_correction', 30, true),
  ('ERP_rejection_requires_fix', 40, true),
  ('compliance_required_correction', 50, true)
on conflict (reopen_reason_code) do nothing;

insert into app_mbo.mbo_master_reopen_scope (reopen_scope_code, sort_order, active_flag) values
  ('evaluation_only', 10, true),
  ('evaluation_and_objective', 20, true),
  ('evaluation_and_action_plan', 30, true),
  ('full_record_scope', 40, true)
on conflict (reopen_scope_code) do nothing;

insert into app_mbo.mbo_master_reminder_type (reminder_type_code, sort_order, active_flag) values
  ('progress_update_reminder', 10, true),
  ('scheduled_review_reminder', 20, true),
  ('evaluation_confirmation_reminder', 30, true),
  ('batch_review_reminder', 40, true),
  ('batch_progress_reminder', 50, true)
on conflict (reminder_type_code) do nothing;

insert into app_mbo.mbo_master_export_format (export_format_code, sort_order, active_flag) values
  ('csv', 10, true),
  ('xlsx', 20, true),
  ('pdf', 30, true)
on conflict (export_format_code) do nothing;

insert into app_mbo.mbo_master_link_role (link_role_code, sort_order, active_flag) values
  ('primary', 10, true),
  ('supporting', 20, true),
  ('reference', 30, true)
on conflict (link_role_code) do nothing;

-- ============================================================
-- 11. OPERATIONAL QUERY PACK
-- ============================================================

-- select * from app_mbo.v_mbo_erp_failed_transmissions order by failed_at desc nulls last;
-- select * from app_mbo.v_mbo_reopen_queue_api order by requested_at desc;
-- select * from app_mbo.v_mbo_objective_work_queue order by work_attention_type, due_date nulls last;
-- select * from app_mbo.v_mbo_dashboard_counts where company_id = :company_id and period_id = :period_id;
