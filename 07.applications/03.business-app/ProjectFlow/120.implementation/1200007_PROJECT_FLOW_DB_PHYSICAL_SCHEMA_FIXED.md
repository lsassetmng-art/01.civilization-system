# ============================================================
# PROJECT FLOW DB PHYSICAL SCHEMA FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Fixes the physical database schema draft for ProjectFlow.

principles:
- ProjectFlow stores operational execution data
- ERP-owned formal data is referenced/imported, not re-authored here
- sync and export/report history must remain auditable
- destructive delete should be avoided
- archival/read-mostly transition is preferred over physical deletion

schema_candidate:
projectflow

# ============================================================
# 1. TABLE LIST
# ============================================================

tables:
- pf_project
- pf_project_task
- pf_project_milestone
- pf_project_issue
- pf_project_risk
- pf_project_time_entry
- pf_sync_request
- pf_sync_log
- pf_export_job
- pf_progress_report_draft

# ============================================================
# 2. PF_PROJECT
# ============================================================

table_name:
pf_project

purpose:
Stores project execution header information.

primary_key:
- project_id uuid

columns:
- project_id uuid pk
- company_id uuid not null
- erp_project_code text null
- project_name text not null
- project_status text not null
- project_type text null
- customer_id uuid null
- customer_name_snapshot text null
- project_manager_id uuid null
- project_manager_name_snapshot text null
- planned_start_date date null
- planned_end_date date null
- actual_start_date date null
- actual_end_date date null
- progress_percent numeric(5,2) not null default 0
- delay_days integer not null default 0
- budget_amount_view numeric(18,2) null
- actual_cost_amount_view numeric(18,2) null
- priority text null
- health_status text null
- external_share_allowed boolean not null default false
- sync_state text not null default 'idle'
- last_imported_at timestamptz null
- last_exported_at timestamptz null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

unique_constraints:
- uq_pf_project_company_erp_project_code (company_id, erp_project_code)

indexes:
- ix_pf_project_company_id (company_id)
- ix_pf_project_project_status (project_status)
- ix_pf_project_project_manager_id (project_manager_id)
- ix_pf_project_planned_end_date (planned_end_date)
- ix_pf_project_sync_state (sync_state)

notes:
- erp_project_code is ERP-owned when present
- budget_amount_view is reference/view data by default
- archived_at null means active record

# ============================================================
# 3. PF_PROJECT_TASK
# ============================================================

table_name:
pf_project_task

purpose:
Stores project task execution rows.

primary_key:
- task_id uuid

columns:
- task_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- parent_task_id uuid null fk -> pf_project_task.task_id
- task_title text not null
- task_description text null
- assignee_id uuid null
- assignee_name_snapshot text null
- status text not null
- priority text null
- planned_start_date date null
- planned_end_date date null
- actual_start_date date null
- actual_end_date date null
- progress_percent numeric(5,2) not null default 0
- delay_days integer not null default 0
- dependency_task_id uuid null fk -> pf_project_task.task_id
- workload_estimate_hours numeric(10,2) null
- workload_actual_hours numeric(10,2) not null default 0
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_task_company_id (company_id)
- ix_pf_project_task_project_id (project_id)
- ix_pf_project_task_assignee_id (assignee_id)
- ix_pf_project_task_status (status)
- ix_pf_project_task_planned_end_date (planned_end_date)

notes:
- parent_task_id supports hierarchy
- dependency_task_id supports simple predecessor dependency

# ============================================================
# 4. PF_PROJECT_MILESTONE
# ============================================================

table_name:
pf_project_milestone

purpose:
Stores milestone rows.

primary_key:
- milestone_id uuid

columns:
- milestone_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- milestone_name text not null
- milestone_status text not null
- due_date date null
- completed_at timestamptz null
- delay_days integer not null default 0
- owner_id uuid null
- owner_name_snapshot text null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_milestone_company_id (company_id)
- ix_pf_project_milestone_project_id (project_id)
- ix_pf_project_milestone_milestone_status (milestone_status)
- ix_pf_project_milestone_due_date (due_date)

# ============================================================
# 5. PF_PROJECT_ISSUE
# ============================================================

table_name:
pf_project_issue

purpose:
Stores issue management rows.

primary_key:
- issue_id uuid

columns:
- issue_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- related_task_id uuid null fk -> pf_project_task.task_id
- title text not null
- description text null
- severity text not null
- status text not null
- owner_id uuid null
- owner_name_snapshot text null
- due_date date null
- resolved_at timestamptz null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_issue_company_id (company_id)
- ix_pf_project_issue_project_id (project_id)
- ix_pf_project_issue_related_task_id (related_task_id)
- ix_pf_project_issue_severity (severity)
- ix_pf_project_issue_status (status)
- ix_pf_project_issue_due_date (due_date)

# ============================================================
# 6. PF_PROJECT_RISK
# ============================================================

table_name:
pf_project_risk

purpose:
Stores risk management rows.

primary_key:
- risk_id uuid

columns:
- risk_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- title text not null
- description text null
- probability_level text not null
- impact_level text not null
- risk_score numeric(10,2) not null default 0
- mitigation_plan text null
- owner_id uuid null
- owner_name_snapshot text null
- status text not null
- archived_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_risk_company_id (company_id)
- ix_pf_project_risk_project_id (project_id)
- ix_pf_project_risk_probability_level (probability_level)
- ix_pf_project_risk_impact_level (impact_level)
- ix_pf_project_risk_status (status)
- ix_pf_project_risk_risk_score (risk_score)

# ============================================================
# 7. PF_PROJECT_TIME_ENTRY
# ============================================================

table_name:
pf_project_time_entry

purpose:
Stores work log / time actual rows.

primary_key:
- time_entry_id uuid

columns:
- time_entry_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- task_id uuid null fk -> pf_project_task.task_id
- member_id uuid not null
- member_name_snapshot text null
- work_date date not null
- hours numeric(10,2) not null
- work_type text null
- note text null
- export_state text not null default 'pending'
- exported_at timestamptz null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_project_time_entry_company_id (company_id)
- ix_pf_project_time_entry_project_id (project_id)
- ix_pf_project_time_entry_task_id (task_id)
- ix_pf_project_time_entry_member_id (member_id)
- ix_pf_project_time_entry_work_date (work_date)
- ix_pf_project_time_entry_export_state (export_state)

# ============================================================
# 8. PF_SYNC_REQUEST
# ============================================================

table_name:
pf_sync_request

purpose:
Stores import/export/retry sync requests.

primary_key:
- sync_request_id uuid

columns:
- sync_request_id uuid pk
- company_id uuid not null
- sync_direction text not null
- sync_type text not null
- target_project_id uuid null fk -> pf_project.project_id
- requested_by_user_id uuid not null
- requested_at timestamptz not null
- started_at timestamptz null
- finished_at timestamptz null
- status text not null
- retry_count integer not null default 0
- retryable boolean not null default false
- mapping_version text null
- request_payload_json jsonb not null
- response_summary_json jsonb null
- error_code text null
- error_message text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_sync_request_company_id (company_id)
- ix_pf_sync_request_target_project_id (target_project_id)
- ix_pf_sync_request_requested_by_user_id (requested_by_user_id)
- ix_pf_sync_request_status (status)
- ix_pf_sync_request_sync_direction (sync_direction)
- ix_pf_sync_request_requested_at (requested_at)

# ============================================================
# 9. PF_SYNC_LOG
# ============================================================

table_name:
pf_sync_log

purpose:
Stores field/entity-level sync mutation and error logs.

primary_key:
- sync_log_id uuid

columns:
- sync_log_id uuid pk
- company_id uuid not null
- sync_request_id uuid not null fk -> pf_sync_request.sync_request_id
- target_entity_type text not null
- target_entity_id uuid null
- field_name text null
- previous_value_snapshot text null
- next_value_snapshot text null
- result_status text not null
- error_code text null
- error_message text null
- retryable boolean not null default false
- created_at timestamptz not null default now()

indexes:
- ix_pf_sync_log_company_id (company_id)
- ix_pf_sync_log_sync_request_id (sync_request_id)
- ix_pf_sync_log_target_entity_type (target_entity_type)
- ix_pf_sync_log_target_entity_id (target_entity_id)
- ix_pf_sync_log_result_status (result_status)
- ix_pf_sync_log_created_at (created_at)

# ============================================================
# 10. PF_EXPORT_JOB
# ============================================================

table_name:
pf_export_job

purpose:
Stores spreadsheet export jobs.

primary_key:
- export_job_id uuid

columns:
- export_job_id uuid pk
- company_id uuid not null
- requested_by_user_id uuid not null
- export_type text not null
- export_format text not null
- target_scope text not null
- filter_snapshot_json jsonb not null
- column_selection_json jsonb not null
- masking_policy_snapshot_json jsonb null
- status text not null
- file_uri text null
- generated_at timestamptz null
- error_code text null
- error_message text null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_export_job_company_id (company_id)
- ix_pf_export_job_requested_by_user_id (requested_by_user_id)
- ix_pf_export_job_target_scope (target_scope)
- ix_pf_export_job_export_format (export_format)
- ix_pf_export_job_status (status)
- ix_pf_export_job_created_at (created_at)

# ============================================================
# 11. PF_PROGRESS_REPORT_DRAFT
# ============================================================

table_name:
pf_progress_report_draft

purpose:
Stores human-editable progress report drafts.

primary_key:
- report_draft_id uuid

columns:
- report_draft_id uuid pk
- company_id uuid not null
- project_id uuid not null fk -> pf_project.project_id
- report_type text not null
- report_period_start date not null
- report_period_end date not null
- template_key text null
- quantitative_summary_json jsonb not null
- qualitative_draft_text text null
- next_actions_text text null
- support_requests_text text null
- customer_confirmation_items_text text null
- approval_status text not null default 'draft'
- created_by_user_id uuid not null
- updated_by_user_id uuid not null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

indexes:
- ix_pf_progress_report_draft_company_id (company_id)
- ix_pf_progress_report_draft_project_id (project_id)
- ix_pf_progress_report_draft_report_type (report_type)
- ix_pf_progress_report_draft_approval_status (approval_status)
- ix_pf_progress_report_draft_report_period_start (report_period_start)
- ix_pf_progress_report_draft_report_period_end (report_period_end)

# ============================================================
# 12. FK POLICY
# ============================================================

fk_policy:
- child rows must reference same-company parent rows at application/service layer
- cross-company reference is forbidden
- archived parent rows remain referencable for history view

# ============================================================
# 13. ENUM / VALUE POLICY
# ============================================================

project_status_candidates:
- draft
- imported
- active
- on_hold
- completed
- archived

task_status_candidates:
- not_started
- in_progress
- blocked
- done
- cancelled

milestone_status_candidates:
- not_started
- in_progress
- completed
- delayed
- cancelled

issue_severity_candidates:
- low
- medium
- high
- critical

issue_status_candidates:
- open
- in_progress
- resolved
- closed
- cancelled

risk_status_candidates:
- open
- monitoring
- mitigated
- closed
- cancelled

sync_direction_candidates:
- import
- export

sync_type_candidates:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

sync_status_candidates:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

export_format_candidates:
- xlsx
- csv

export_job_status_candidates:
- queued
- generating
- completed
- failed

approval_status_candidates:
- draft
- reviewed
- approved

# ============================================================
# 14. AUDIT / UPDATE POLICY
# ============================================================

audit_rules:
- sync request payload must be preserved
- sync result summary must be preserved
- report drafts must remain human-editable
- export job history must remain reviewable

update_rules:
- every mutable table should update updated_at on change
- operational deletion should prefer archive semantics
- ERP-owned fields should be refreshed only through controlled import path

# ============================================================
# 15. OPEN ITEMS
# ============================================================

open_items:
- final schema name confirmation
- final enum constraint implementation style
- RLS policy detail
- trigger design for updated_at
- materialized summary need 여부 review
