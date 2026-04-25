#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

# ============================================================
# AICompanyManager DB Apply Method A Guarded Oneblock Draft
# ============================================================
# IMPORTANT:
# This file is prepared in Phase D.
# Do not execute unless Boss explicitly says DB OK / GO.
# ============================================================

: "${DATABASE_URL:?ERROR: DATABASE_URL is not set}"
: "${AICM_DB_APPLY_GO:?ERROR: set AICM_DB_APPLY_GO=YES only after Boss DB OK}"
: "${AICM_SATO_DB_REVIEW_OK:?ERROR: set AICM_SATO_DB_REVIEW_OK=YES only after Sato DB review OK}"

if [ "$AICM_DB_APPLY_GO" != "YES" ]; then
  printf '%s\n' 'ERROR: AICM_DB_APPLY_GO is not YES'
  exit 1
fi

if [ "$AICM_SATO_DB_REVIEW_OK" != "YES" ]; then
  printf '%s\n' 'ERROR: AICM_SATO_DB_REVIEW_OK is not YES'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'AICompanyManager DB APPLY START'
printf '%s\n' '============================================================'

psql "$DATABASE_URL" <<'SQL'
\echo 'AICompanyManager additive DB apply start'

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

create index if not exists idx_aicm_company_owner_user_id on business.ai_company_manager_company(owner_user_id);
create index if not exists idx_aicm_company_status on business.ai_company_manager_company(status);
create index if not exists idx_aicm_project_company_id on business.ai_company_manager_project(company_id);
create index if not exists idx_aicm_project_owner_user_id on business.ai_company_manager_project(owner_user_id);
create index if not exists idx_aicm_project_status on business.ai_company_manager_project(project_status);
create index if not exists idx_aicm_project_created_at on business.ai_company_manager_project(created_at desc);
create index if not exists idx_aicm_policy_project_id on business.ai_company_manager_policy(project_id);
create index if not exists idx_aicm_policy_status on business.ai_company_manager_policy(policy_status);
create index if not exists idx_aicm_pipeline_project_id on business.ai_company_manager_pipeline_run(project_id);
create index if not exists idx_aicm_pipeline_policy_id on business.ai_company_manager_pipeline_run(policy_id);
create index if not exists idx_aicm_pipeline_aiworker_run_ref on business.ai_company_manager_pipeline_run(aiworker_run_ref);
create index if not exists idx_aicm_pipeline_status on business.ai_company_manager_pipeline_run(run_status);
create index if not exists idx_aicm_role_assignment_run_id on business.ai_company_manager_role_assignment(pipeline_run_id);
create index if not exists idx_aicm_role_assignment_role_code on business.ai_company_manager_role_assignment(role_code);
create index if not exists idx_aicm_stage_run_id on business.ai_company_manager_stage(pipeline_run_id);
create index if not exists idx_aicm_stage_stage_code on business.ai_company_manager_stage(stage_code);
create index if not exists idx_aicm_stage_status on business.ai_company_manager_stage(stage_status);
create index if not exists idx_aicm_deliverable_run_id on business.ai_company_manager_deliverable(pipeline_run_id);
create index if not exists idx_aicm_deliverable_parent_id on business.ai_company_manager_deliverable(parent_deliverable_id);
create index if not exists idx_aicm_deliverable_status on business.ai_company_manager_deliverable(deliverable_status);
create index if not exists idx_aicm_review_deliverable_id on business.ai_company_manager_review(deliverable_id);
create index if not exists idx_aicm_review_run_id on business.ai_company_manager_review(pipeline_run_id);
create index if not exists idx_aicm_review_status on business.ai_company_manager_review(review_status);
create index if not exists idx_aicm_return_review_id on business.ai_company_manager_return_request(review_id);
create index if not exists idx_aicm_return_deliverable_id on business.ai_company_manager_return_request(deliverable_id);
create index if not exists idx_aicm_return_run_id on business.ai_company_manager_return_request(pipeline_run_id);
create index if not exists idx_aicm_return_status on business.ai_company_manager_return_request(return_status);
create index if not exists idx_aicm_approval_project_id on business.ai_company_manager_approval(project_id);
create index if not exists idx_aicm_approval_run_id on business.ai_company_manager_approval(pipeline_run_id);
create index if not exists idx_aicm_approval_deliverable_id on business.ai_company_manager_approval(deliverable_id);
create index if not exists idx_aicm_approval_status on business.ai_company_manager_approval(approval_status);
create index if not exists idx_aicm_delivery_project_id on business.ai_company_manager_delivery(project_id);
create index if not exists idx_aicm_delivery_run_id on business.ai_company_manager_delivery(pipeline_run_id);
create index if not exists idx_aicm_delivery_approval_id on business.ai_company_manager_delivery(approval_id);
create index if not exists idx_aicm_delivery_status on business.ai_company_manager_delivery(delivery_status);
create index if not exists idx_aicm_queue_owner_user_id on business.ai_company_manager_queue_item(owner_user_id);
create index if not exists idx_aicm_queue_project_id on business.ai_company_manager_queue_item(project_id);
create index if not exists idx_aicm_queue_status on business.ai_company_manager_queue_item(queue_status);
create index if not exists idx_aicm_queue_type on business.ai_company_manager_queue_item(queue_type);
create index if not exists idx_aicm_audit_owner_user_id on business.ai_company_manager_audit_log(owner_user_id);
create index if not exists idx_aicm_audit_project_id on business.ai_company_manager_audit_log(project_id);
create index if not exists idx_aicm_audit_run_id on business.ai_company_manager_audit_log(pipeline_run_id);
create index if not exists idx_aicm_audit_action_code on business.ai_company_manager_audit_log(action_code);
create index if not exists idx_aicm_audit_created_at on business.ai_company_manager_audit_log(created_at desc);

\echo 'AICompanyManager additive DB apply done'
SQL

printf '%s\n' '============================================================'
printf '%s\n' 'AICompanyManager DB APPLY DONE'
printf '%s\n' '============================================================'
