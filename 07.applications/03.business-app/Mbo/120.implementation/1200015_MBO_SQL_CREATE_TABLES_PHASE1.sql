-- ============================================================
-- MBO SQL CREATE TABLES
-- PHASE 1
-- reviewer: Sato
-- ============================================================

-- NOTE:
-- - schema name is fixed here as app_mbo
-- - additive-first design
-- - exact index/check/view set is handled in next phase

create schema if not exists app_mbo;

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
