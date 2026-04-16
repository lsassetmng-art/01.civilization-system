# ============================================================
# MBO DDL EXACT TABLES
# PHASE 1
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

ddl_assumptions:
- schema name is to be fixed later
- id type is uuid
- timestamp type is timestamptz
- text fields use text unless narrower type is explicitly required
- soft delete is not assumed by default in phase 1
- created_at and updated_at are mandatory unless append-only log table semantics apply

tables:

  mbo_period:
    columns:
      - period_id: uuid pk
      - company_id: uuid not null
      - period_code: text not null
      - period_name: text not null
      - start_date: date not null
      - end_date: date not null
      - status: text not null
      - language_code: text not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
    constraints:
      - unique(company_id, period_code)

  mbo_objective:
    columns:
      - objective_id: uuid pk
      - company_id: uuid not null
      - period_id: uuid not null fk mbo_period.period_id
      - owner_user_id: uuid not null
      - manager_user_id: uuid
      - title: text not null
      - objective_category: text not null
      - objective_type: text not null
      - quantitative_target: text
      - qualitative_target: text
      - success_criteria: text not null
      - priority: text not null
      - weight: numeric(10,2) not null
      - progress_percent: numeric(5,2) not null default 0
      - status: text not null
      - start_date: date
      - due_date: date
      - final_lock_flag: boolean not null default false
      - final_locked_at: timestamptz
      - source_objective_id: uuid
      - source_template_id: uuid
      - language_code: text not null
      - currency_code: text not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_action_plan:
    columns:
      - action_plan_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - step_no: integer not null
      - step_title: text not null
      - step_description: text
      - owner_user_id: uuid
      - planned_start_at: timestamptz
      - planned_end_at: timestamptz
      - completion_percent: numeric(5,2) not null default 0
      - status: text not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
    constraints:
      - unique(objective_id, step_no)

  mbo_progress_log:
    columns:
      - progress_log_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - logged_by_user_id: uuid not null
      - logged_at: timestamptz not null
      - progress_percent: numeric(5,2) not null
      - progress_comment: text
      - blocker_note: text
      - next_action_note: text
      - language_code: text not null
      - created_at: timestamptz not null

  mbo_review_schedule:
    columns:
      - review_schedule_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - review_type: text not null
      - planned_review_at: timestamptz not null
      - reviewer_user_id: uuid not null
      - status: text not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_review_log:
    columns:
      - review_log_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - review_type: text not null
      - reviewer_user_id: uuid not null
      - reviewed_at: timestamptz not null
      - review_comment: text
      - review_result: text not null
      - manager_comment_template_id: uuid
      - language_code: text not null
      - created_at: timestamptz not null

  mbo_evaluation:
    columns:
      - evaluation_id: uuid pk
      - objective_id: uuid not null unique fk mbo_objective.objective_id
      - evaluator_user_id: uuid not null
      - evaluation_score: numeric(10,2) not null
      - evaluation_comment: text not null
      - final_lock_flag: boolean not null default false
      - confirmed_at: timestamptz
      - ERP_sent_at: timestamptz
      - ERP_send_status: text not null default 'not_started'
      - language_code: text not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_objective_template:
    columns:
      - objective_template_id: uuid pk
      - company_id: uuid not null
      - department_id: uuid
      - template_scope: text not null
      - template_name: text not null
      - objective_category: text not null
      - objective_type: text not null
      - default_quantitative_target: text
      - default_qualitative_target: text
      - default_success_criteria: text
      - default_priority: text
      - default_weight: numeric(10,2)
      - language_code: text not null
      - active_flag: boolean not null default true
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_manager_comment_template:
    columns:
      - manager_comment_template_id: uuid pk
      - company_id: uuid not null
      - department_id: uuid
      - template_name: text not null
      - template_body: text not null
      - language_code: text not null
      - active_flag: boolean not null default true
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_review_cadence_preset:
    columns:
      - review_cadence_preset_id: uuid pk
      - company_id: uuid not null
      - preset_name: text not null
      - cadence_type: text not null
      - interval_rule: text not null
      - language_code: text not null
      - active_flag: boolean not null default true
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_interview_memo:
    columns:
      - interview_memo_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - memo_type: text not null
      - memo_at: timestamptz not null
      - author_user_id: uuid not null
      - memo_body: text not null
      - language_code: text not null
      - created_at: timestamptz not null

  mbo_evidence_reference:
    columns:
      - evidence_reference_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - progress_log_id: uuid
      - review_log_id: uuid
      - reference_type: text not null
      - reference_uri: text not null
      - reference_label: text
      - uploaded_at: timestamptz not null

  mbo_objective_task_link:
    columns:
      - objective_task_link_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - linked_task_id: uuid not null
      - link_role: text not null
      - linked_at: timestamptz not null

  mbo_objective_project_link:
    columns:
      - objective_project_link_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - linked_project_id: uuid not null
      - link_role: text not null
      - linked_at: timestamptz not null

  mbo_evaluation_calibration_record:
    columns:
      - evaluation_calibration_record_id: uuid pk
      - period_id: uuid not null fk mbo_period.period_id
      - objective_id: uuid not null fk mbo_objective.objective_id
      - evaluation_id: uuid not null fk mbo_evaluation.evaluation_id
      - calibration_status: text not null
      - calibration_comment: text
      - calibrated_by_user_id: uuid not null
      - calibrated_at: timestamptz not null
      - created_at: timestamptz not null

  mbo_aggregation_export_job:
    columns:
      - aggregation_export_job_id: uuid pk
      - requested_by_user_id: uuid not null
      - export_scope: text not null
      - export_format: text not null
      - job_status: text not null
      - requested_at: timestamptz not null
      - completed_at: timestamptz
      - output_uri: text

  mbo_reminder_batch_job:
    columns:
      - reminder_batch_job_id: uuid pk
      - requested_by_user_id: uuid not null
      - reminder_type: text not null
      - target_scope: text not null
      - job_status: text not null
      - requested_at: timestamptz not null
      - completed_at: timestamptz

  mbo_ERP_transmission_history:
    columns:
      - transmission_history_id: uuid pk
      - transmission_id: text not null
      - transmission_version: integer not null
      - company_id: uuid not null
      - objective_id: uuid not null fk mbo_objective.objective_id
      - evaluation_id: uuid not null fk mbo_evaluation.evaluation_id
      - sender_user_id: uuid not null
      - ERP_send_status: text not null
      - request_id: text not null
      - payload_snapshot_json: jsonb not null
      - sent_at: timestamptz
      - failed_at: timestamptz
      - created_at: timestamptz not null
    constraints:
      - unique(transmission_id)

  mbo_ERP_resend_job:
    columns:
      - ERP_resend_job_id: uuid pk
      - transmission_history_id: uuid not null fk mbo_ERP_transmission_history.transmission_history_id
      - requested_by_user_id: uuid not null
      - resend_reason: text not null
      - resend_status: text not null
      - requested_at: timestamptz not null
      - completed_at: timestamptz

  mbo_reopen_request:
    columns:
      - reopen_request_id: uuid pk
      - objective_id: uuid not null fk mbo_objective.objective_id
      - evaluation_id: uuid not null fk mbo_evaluation.evaluation_id
      - requested_by_user_id: uuid not null
      - requested_at: timestamptz not null
      - reopen_reason_code: text not null
      - reopen_reason_detail: text not null
      - current_state: text not null
      - target_state: text not null
      - reopen_scope: text not null
      - reopen_status: text not null
      - approval_required_flag: boolean not null default true
      - created_at: timestamptz not null
      - updated_at: timestamptz not null

  mbo_reopen_approval_log:
    columns:
      - reopen_approval_log_id: uuid pk
      - reopen_request_id: uuid not null fk mbo_reopen_request.reopen_request_id
      - approver_user_id: uuid not null
      - approval_action: text not null
      - approval_comment: text
      - approved_at: timestamptz not null
      - created_at: timestamptz not null

  mbo_reopen_execution_log:
    columns:
      - reopen_execution_log_id: uuid pk
      - reopen_request_id: uuid not null fk mbo_reopen_request.reopen_request_id
      - executor_user_id: uuid not null
      - executed_from_state: text not null
      - executed_to_state: text not null
      - executed_at: timestamptz not null
      - created_at: timestamptz not null

  mbo_ERP_impact_note:
    columns:
      - ERP_impact_note_id: uuid pk
      - reopen_request_id: uuid not null fk mbo_reopen_request.reopen_request_id
      - reviewer_user_id: uuid not null
      - impact_note: text not null
      - reviewed_at: timestamptz not null
      - created_at: timestamptz not null

phase1_validation_rules:
- weight must be >= 0
- progress_percent must be between 0 and 100
- completion_percent must be between 0 and 100
- evaluation_score range is governed later by scoring policy
- final_locked_at must be present when final_lock_flag = true
- confirmed_at should be present when final_lock_flag = true
