# ============================================================
# PROJECT FLOW DB DDL PREPARED
# ============================================================

status: canonical-pre-ddl
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides implementation-ready DDL draft for ProjectFlow.

assumptions:
- PostgreSQL compatible
- additive creation
- schema candidate is projectflow
- ERP integration path is external to this schema
- auditability is required
- archive semantics are preferred over destructive delete

# ============================================================
# 1. SCHEMA
# ============================================================

sql:
CREATE SCHEMA IF NOT EXISTS projectflow;

# ============================================================
# 2. TABLES
# ============================================================

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project (
  project_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  erp_project_code text NULL,
  project_name text NOT NULL,
  project_status text NOT NULL,
  project_type text NULL,
  customer_id uuid NULL,
  customer_name_snapshot text NULL,
  project_manager_id uuid NULL,
  project_manager_name_snapshot text NULL,
  planned_start_date date NULL,
  planned_end_date date NULL,
  actual_start_date date NULL,
  actual_end_date date NULL,
  progress_percent numeric(5,2) NOT NULL DEFAULT 0,
  delay_days integer NOT NULL DEFAULT 0,
  budget_amount_view numeric(18,2) NULL,
  actual_cost_amount_view numeric(18,2) NULL,
  priority text NULL,
  health_status text NULL,
  external_share_allowed boolean NOT NULL DEFAULT false,
  sync_state text NOT NULL DEFAULT 'idle',
  last_imported_at timestamptz NULL,
  last_exported_at timestamptz NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_pf_project_company_erp_project_code UNIQUE (company_id, erp_project_code),
  CONSTRAINT ck_pf_project_progress_percent CHECK (progress_percent >= 0 AND progress_percent <= 100),
  CONSTRAINT ck_pf_project_delay_days CHECK (delay_days >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_task (
  task_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  parent_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  task_title text NOT NULL,
  task_description text NULL,
  assignee_id uuid NULL,
  assignee_name_snapshot text NULL,
  status text NOT NULL,
  priority text NULL,
  planned_start_date date NULL,
  planned_end_date date NULL,
  actual_start_date date NULL,
  actual_end_date date NULL,
  progress_percent numeric(5,2) NOT NULL DEFAULT 0,
  delay_days integer NOT NULL DEFAULT 0,
  dependency_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  workload_estimate_hours numeric(10,2) NULL,
  workload_actual_hours numeric(10,2) NOT NULL DEFAULT 0,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_task_progress_percent CHECK (progress_percent >= 0 AND progress_percent <= 100),
  CONSTRAINT ck_pf_project_task_delay_days CHECK (delay_days >= 0),
  CONSTRAINT ck_pf_project_task_workload_estimate_hours CHECK (workload_estimate_hours IS NULL OR workload_estimate_hours >= 0),
  CONSTRAINT ck_pf_project_task_workload_actual_hours CHECK (workload_actual_hours >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_milestone (
  milestone_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  milestone_name text NOT NULL,
  milestone_status text NOT NULL,
  due_date date NULL,
  completed_at timestamptz NULL,
  delay_days integer NOT NULL DEFAULT 0,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_milestone_delay_days CHECK (delay_days >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_issue (
  issue_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  related_task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  title text NOT NULL,
  description text NULL,
  severity text NOT NULL,
  status text NOT NULL,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  due_date date NULL,
  resolved_at timestamptz NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_risk (
  risk_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  title text NOT NULL,
  description text NULL,
  probability_level text NOT NULL,
  impact_level text NOT NULL,
  risk_score numeric(10,2) NOT NULL DEFAULT 0,
  mitigation_plan text NULL,
  owner_id uuid NULL,
  owner_name_snapshot text NULL,
  status text NOT NULL,
  archived_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_risk_risk_score CHECK (risk_score >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_project_time_entry (
  time_entry_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  task_id uuid NULL REFERENCES projectflow.pf_project_task(task_id),
  member_id uuid NOT NULL,
  member_name_snapshot text NULL,
  work_date date NOT NULL,
  hours numeric(10,2) NOT NULL,
  work_type text NULL,
  note text NULL,
  export_state text NOT NULL DEFAULT 'pending',
  exported_at timestamptz NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_project_time_entry_hours CHECK (hours > 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_sync_request (
  sync_request_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  sync_direction text NOT NULL,
  sync_type text NOT NULL,
  target_project_id uuid NULL REFERENCES projectflow.pf_project(project_id),
  requested_by_user_id uuid NOT NULL,
  requested_at timestamptz NOT NULL,
  started_at timestamptz NULL,
  finished_at timestamptz NULL,
  status text NOT NULL,
  retry_count integer NOT NULL DEFAULT 0,
  retryable boolean NOT NULL DEFAULT false,
  mapping_version text NULL,
  request_payload_json jsonb NOT NULL,
  response_summary_json jsonb NULL,
  error_code text NULL,
  error_message text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_sync_request_retry_count CHECK (retry_count >= 0)
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_sync_log (
  sync_log_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  sync_request_id uuid NOT NULL REFERENCES projectflow.pf_sync_request(sync_request_id),
  target_entity_type text NOT NULL,
  target_entity_id uuid NULL,
  field_name text NULL,
  previous_value_snapshot text NULL,
  next_value_snapshot text NULL,
  result_status text NOT NULL,
  error_code text NULL,
  error_message text NULL,
  retryable boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_export_job (
  export_job_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  requested_by_user_id uuid NOT NULL,
  export_type text NOT NULL,
  export_format text NOT NULL,
  target_scope text NOT NULL,
  filter_snapshot_json jsonb NOT NULL,
  column_selection_json jsonb NOT NULL,
  masking_policy_snapshot_json jsonb NULL,
  status text NOT NULL,
  file_uri text NULL,
  generated_at timestamptz NULL,
  error_code text NULL,
  error_message text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

sql:
CREATE TABLE IF NOT EXISTS projectflow.pf_progress_report_draft (
  report_draft_id uuid PRIMARY KEY,
  company_id uuid NOT NULL,
  project_id uuid NOT NULL REFERENCES projectflow.pf_project(project_id),
  report_type text NOT NULL,
  report_period_start date NOT NULL,
  report_period_end date NOT NULL,
  template_key text NULL,
  quantitative_summary_json jsonb NOT NULL,
  qualitative_draft_text text NULL,
  next_actions_text text NULL,
  support_requests_text text NULL,
  customer_confirmation_items_text text NULL,
  approval_status text NOT NULL DEFAULT 'draft',
  created_by_user_id uuid NOT NULL,
  updated_by_user_id uuid NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_pf_progress_report_draft_period CHECK (report_period_end >= report_period_start)
);

# ============================================================
# 3. INDEXES
# ============================================================

sql:
CREATE INDEX IF NOT EXISTS ix_pf_project_company_id ON projectflow.pf_project(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_project_status ON projectflow.pf_project(project_status);
CREATE INDEX IF NOT EXISTS ix_pf_project_project_manager_id ON projectflow.pf_project(project_manager_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_planned_end_date ON projectflow.pf_project(planned_end_date);
CREATE INDEX IF NOT EXISTS ix_pf_project_sync_state ON projectflow.pf_project(sync_state);

CREATE INDEX IF NOT EXISTS ix_pf_project_task_company_id ON projectflow.pf_project_task(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_project_id ON projectflow.pf_project_task(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_assignee_id ON projectflow.pf_project_task(assignee_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_status ON projectflow.pf_project_task(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_task_planned_end_date ON projectflow.pf_project_task(planned_end_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_company_id ON projectflow.pf_project_milestone(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_project_id ON projectflow.pf_project_milestone(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_milestone_status ON projectflow.pf_project_milestone(milestone_status);
CREATE INDEX IF NOT EXISTS ix_pf_project_milestone_due_date ON projectflow.pf_project_milestone(due_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_issue_company_id ON projectflow.pf_project_issue(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_project_id ON projectflow.pf_project_issue(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_related_task_id ON projectflow.pf_project_issue(related_task_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_severity ON projectflow.pf_project_issue(severity);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_status ON projectflow.pf_project_issue(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_issue_due_date ON projectflow.pf_project_issue(due_date);

CREATE INDEX IF NOT EXISTS ix_pf_project_risk_company_id ON projectflow.pf_project_risk(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_project_id ON projectflow.pf_project_risk(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_probability_level ON projectflow.pf_project_risk(probability_level);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_impact_level ON projectflow.pf_project_risk(impact_level);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_status ON projectflow.pf_project_risk(status);
CREATE INDEX IF NOT EXISTS ix_pf_project_risk_risk_score ON projectflow.pf_project_risk(risk_score);

CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_company_id ON projectflow.pf_project_time_entry(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_project_id ON projectflow.pf_project_time_entry(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_task_id ON projectflow.pf_project_time_entry(task_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_member_id ON projectflow.pf_project_time_entry(member_id);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_work_date ON projectflow.pf_project_time_entry(work_date);
CREATE INDEX IF NOT EXISTS ix_pf_project_time_entry_export_state ON projectflow.pf_project_time_entry(export_state);

CREATE INDEX IF NOT EXISTS ix_pf_sync_request_company_id ON projectflow.pf_sync_request(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_target_project_id ON projectflow.pf_sync_request(target_project_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_requested_by_user_id ON projectflow.pf_sync_request(requested_by_user_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_status ON projectflow.pf_sync_request(status);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_sync_direction ON projectflow.pf_sync_request(sync_direction);
CREATE INDEX IF NOT EXISTS ix_pf_sync_request_requested_at ON projectflow.pf_sync_request(requested_at);

CREATE INDEX IF NOT EXISTS ix_pf_sync_log_company_id ON projectflow.pf_sync_log(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_sync_request_id ON projectflow.pf_sync_log(sync_request_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_target_entity_type ON projectflow.pf_sync_log(target_entity_type);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_target_entity_id ON projectflow.pf_sync_log(target_entity_id);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_result_status ON projectflow.pf_sync_log(result_status);
CREATE INDEX IF NOT EXISTS ix_pf_sync_log_created_at ON projectflow.pf_sync_log(created_at);

CREATE INDEX IF NOT EXISTS ix_pf_export_job_company_id ON projectflow.pf_export_job(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_requested_by_user_id ON projectflow.pf_export_job(requested_by_user_id);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_target_scope ON projectflow.pf_export_job(target_scope);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_export_format ON projectflow.pf_export_job(export_format);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_status ON projectflow.pf_export_job(status);
CREATE INDEX IF NOT EXISTS ix_pf_export_job_created_at ON projectflow.pf_export_job(created_at);

CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_company_id ON projectflow.pf_progress_report_draft(company_id);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_project_id ON projectflow.pf_progress_report_draft(project_id);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_type ON projectflow.pf_progress_report_draft(report_type);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_approval_status ON projectflow.pf_progress_report_draft(approval_status);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_period_start ON projectflow.pf_progress_report_draft(report_period_start);
CREATE INDEX IF NOT EXISTS ix_pf_progress_report_draft_report_period_end ON projectflow.pf_progress_report_draft(report_period_end);

# ============================================================
# 4. UPDATED_AT TRIGGER DRAFT
# ============================================================

sql:
CREATE OR REPLACE FUNCTION projectflow.set_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

sql:
DROP TRIGGER IF EXISTS trg_pf_project_set_updated_at ON projectflow.pf_project;
CREATE TRIGGER trg_pf_project_set_updated_at
BEFORE UPDATE ON projectflow.pf_project
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_task_set_updated_at ON projectflow.pf_project_task;
CREATE TRIGGER trg_pf_project_task_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_task
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_milestone_set_updated_at ON projectflow.pf_project_milestone;
CREATE TRIGGER trg_pf_project_milestone_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_milestone
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_issue_set_updated_at ON projectflow.pf_project_issue;
CREATE TRIGGER trg_pf_project_issue_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_issue
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_risk_set_updated_at ON projectflow.pf_project_risk;
CREATE TRIGGER trg_pf_project_risk_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_risk
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_project_time_entry_set_updated_at ON projectflow.pf_project_time_entry;
CREATE TRIGGER trg_pf_project_time_entry_set_updated_at
BEFORE UPDATE ON projectflow.pf_project_time_entry
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_sync_request_set_updated_at ON projectflow.pf_sync_request;
CREATE TRIGGER trg_pf_sync_request_set_updated_at
BEFORE UPDATE ON projectflow.pf_sync_request
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_export_job_set_updated_at ON projectflow.pf_export_job;
CREATE TRIGGER trg_pf_export_job_set_updated_at
BEFORE UPDATE ON projectflow.pf_export_job
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

DROP TRIGGER IF EXISTS trg_pf_progress_report_draft_set_updated_at ON projectflow.pf_progress_report_draft;
CREATE TRIGGER trg_pf_progress_report_draft_set_updated_at
BEFORE UPDATE ON projectflow.pf_progress_report_draft
FOR EACH ROW
EXECUTE FUNCTION projectflow.set_updated_at();

# ============================================================
# 5. ENUM CONSTRAINT DRAFT
# ============================================================

sql:
ALTER TABLE projectflow.pf_project
  ADD CONSTRAINT ck_pf_project_project_status
  CHECK (project_status IN ('draft','imported','active','on_hold','completed','archived'));

ALTER TABLE projectflow.pf_project_task
  ADD CONSTRAINT ck_pf_project_task_status
  CHECK (status IN ('not_started','in_progress','blocked','done','cancelled'));

ALTER TABLE projectflow.pf_project_milestone
  ADD CONSTRAINT ck_pf_project_milestone_status
  CHECK (milestone_status IN ('not_started','in_progress','completed','delayed','cancelled'));

ALTER TABLE projectflow.pf_project_issue
  ADD CONSTRAINT ck_pf_project_issue_severity
  CHECK (severity IN ('low','medium','high','critical'));

ALTER TABLE projectflow.pf_project_issue
  ADD CONSTRAINT ck_pf_project_issue_status
  CHECK (status IN ('open','in_progress','resolved','closed','cancelled'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_probability_level
  CHECK (probability_level IN ('low','medium','high'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_impact_level
  CHECK (impact_level IN ('low','medium','high'));

ALTER TABLE projectflow.pf_project_risk
  ADD CONSTRAINT ck_pf_project_risk_status
  CHECK (status IN ('open','monitoring','mitigated','closed','cancelled'));

ALTER TABLE projectflow.pf_project_time_entry
  ADD CONSTRAINT ck_pf_project_time_entry_export_state
  CHECK (export_state IN ('pending','exported','failed'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_sync_direction
  CHECK (sync_direction IN ('import','export'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_sync_type
  CHECK (sync_type IN ('manual','scheduled','retry','initial_full_import','differential_import'));

ALTER TABLE projectflow.pf_sync_request
  ADD CONSTRAINT ck_pf_sync_request_status
  CHECK (status IN ('queued','running','partially_failed','completed','failed','cancelled'));

ALTER TABLE projectflow.pf_export_job
  ADD CONSTRAINT ck_pf_export_job_export_format
  CHECK (export_format IN ('xlsx','csv'));

ALTER TABLE projectflow.pf_export_job
  ADD CONSTRAINT ck_pf_export_job_status
  CHECK (status IN ('queued','generating','completed','failed'));

ALTER TABLE projectflow.pf_progress_report_draft
  ADD CONSTRAINT ck_pf_progress_report_draft_report_type
  CHECK (report_type IN ('weekly','monthly','customer','internal'));

ALTER TABLE projectflow.pf_progress_report_draft
  ADD CONSTRAINT ck_pf_progress_report_draft_approval_status
  CHECK (approval_status IN ('draft','reviewed','approved'));

# ============================================================
# 6. IMPLEMENTATION NOTES
# ============================================================

implementation_notes:
- convert ALTER TABLE constraints to guarded migration form during execution planning
- company-consistency validation may require service-layer guard or trigger later
- RLS is intentionally not fixed in this document
- final execution order should be reviewed by Sato(DB)

