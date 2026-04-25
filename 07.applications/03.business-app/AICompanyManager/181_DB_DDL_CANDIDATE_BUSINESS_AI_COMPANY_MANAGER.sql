-- ============================================================
-- AICompanyManager DB DDL Candidate
-- ============================================================
-- app_name: AICompanyManager
-- display_name: AI企業運営アプリ
-- category: 03.business-app
-- phase: Phase C
-- status: ddl-candidate-for-review
-- reviewer: 佐藤（DB担当）
--
-- IMPORTANT:
-- This SQL is a review candidate only.
-- Do not apply in Phase C.
-- Actual DB apply requires Boss explicit GO and Sato DB review OK.
-- ============================================================

create schema if not exists business;

create table if not exists business.ai_company_manager_company (
  company_id uuid primary key default gen_random_uuid(),
  owner_user_id uuid not null,
  company_name text not null,
  display_name text,
  description text,
  status text not null default 'active',
  aiworker_org_ref text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_project (
  project_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  owner_user_id uuid not null,
  project_title text not null,
  project_summary text,
  project_status text not null default 'draft',
  priority text not null default 'normal',
  due_at timestamptz,
  delivery_format text,
  human_approval_required boolean not null default true,
  current_pipeline_run_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_policy (
  policy_id uuid primary key default gen_random_uuid(),
  project_id uuid not null,
  policy_title text not null,
  business_goal text not null,
  expected_output text not null,
  target_audience text,
  constraints_text text,
  forbidden_text text,
  quality_standard text,
  review_policy text,
  delivery_requirement text,
  policy_status text not null default 'draft',
  submitted_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_pipeline_run (
  pipeline_run_id uuid primary key default gen_random_uuid(),
  project_id uuid not null,
  policy_id uuid not null,
  aiworker_run_ref text,
  run_status text not null default 'created',
  current_role text,
  current_stage text,
  started_at timestamptz,
  completed_at timestamptz,
  cancelled_at timestamptz,
  last_sync_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_role_assignment (
  assignment_id uuid primary key default gen_random_uuid(),
  pipeline_run_id uuid not null,
  role_code text not null,
  aiworker_ref text not null,
  display_name text,
  assigned_domain text,
  assignment_status text not null default 'assigned',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_stage (
  stage_id uuid primary key default gen_random_uuid(),
  pipeline_run_id uuid not null,
  stage_code text not null,
  role_code text not null,
  stage_status text not null default 'waiting',
  input_summary text,
  output_summary text,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_deliverable (
  deliverable_id uuid primary key default gen_random_uuid(),
  pipeline_run_id uuid not null,
  parent_deliverable_id uuid,
  produced_by_role text not null,
  produced_by_ref text,
  deliverable_title text not null,
  deliverable_type text not null,
  content_ref text,
  content_text text,
  deliverable_status text not null default 'draft',
  version_no integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_review (
  review_id uuid primary key default gen_random_uuid(),
  deliverable_id uuid not null,
  pipeline_run_id uuid not null,
  reviewer_role text not null,
  reviewer_ref text,
  review_status text not null default 'pending',
  review_comment text,
  quality_score integer,
  reviewed_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_return_request (
  return_id uuid primary key default gen_random_uuid(),
  review_id uuid not null,
  deliverable_id uuid not null,
  pipeline_run_id uuid not null,
  from_role text not null,
  to_role text not null,
  reason text not null,
  correction_target text not null,
  correction_instruction text not null,
  due_at timestamptz,
  return_status text not null default 'open',
  return_count integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_approval (
  approval_id uuid primary key default gen_random_uuid(),
  project_id uuid not null,
  pipeline_run_id uuid not null,
  deliverable_id uuid not null,
  approver_user_id uuid not null,
  approval_status text not null default 'waiting',
  approval_comment text,
  approved_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_delivery (
  delivery_id uuid primary key default gen_random_uuid(),
  project_id uuid not null,
  pipeline_run_id uuid not null,
  approval_id uuid not null,
  deliverable_id uuid not null,
  delivery_status text not null default 'prepared',
  delivery_format text not null default 'markdown',
  delivery_ref text,
  delivered_at timestamptz,
  accepted_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_queue_item (
  queue_item_id uuid primary key default gen_random_uuid(),
  owner_user_id uuid not null,
  project_id uuid,
  pipeline_run_id uuid,
  queue_type text not null,
  payload_json jsonb not null default '{}'::jsonb,
  queue_status text not null default 'pending',
  retry_count integer not null default 0,
  last_error_code text,
  last_error_message text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.ai_company_manager_audit_log (
  audit_log_id uuid primary key default gen_random_uuid(),
  owner_user_id uuid,
  project_id uuid,
  pipeline_run_id uuid,
  actor_type text not null,
  actor_ref text,
  action_code text not null,
  before_json jsonb,
  after_json jsonb,
  reason text,
  created_at timestamptz not null default now()
);

comment on table business.ai_company_manager_company is 'AICompanyManager company operation unit. BusinessOS app-side canon.';
comment on table business.ai_company_manager_project is 'AICompanyManager project. Human-facing business operation canon.';
comment on table business.ai_company_manager_policy is 'Human policy submitted to President.';
comment on table business.ai_company_manager_pipeline_run is 'App-side tracking for AIWorkerOS company pipeline run.';
comment on table business.ai_company_manager_role_assignment is 'App-side display assignment for President / Manager / Leader / Worker.';
comment on table business.ai_company_manager_stage is 'App-side pipeline stage tracking.';
comment on table business.ai_company_manager_deliverable is 'App-side deliverable candidate and final output tracking.';
comment on table business.ai_company_manager_review is 'Review result for deliverables.';
comment on table business.ai_company_manager_return_request is 'Return and rework request.';
comment on table business.ai_company_manager_approval is 'Human approval record.';
comment on table business.ai_company_manager_delivery is 'Human delivery record.';
comment on table business.ai_company_manager_queue_item is 'App-side local queue business meaning.';
comment on table business.ai_company_manager_audit_log is 'Audit log for human-facing operation, approval, delivery, and state changes.';
