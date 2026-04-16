# ============================================================
# BUSINESS AI WORKER PHYSICAL DDL EXECUTION FIXED
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed physical DDL execution specification
for Business AI Worker.

execution_rule:
DDL must be executable in a deterministic order.

schema_name:
business_os

# ============================================================
# 1. PRECONDITIONS
# ============================================================

required_extensions:
- pgcrypto

required_rule:
gen_random_uuid() is used for uuid primary keys.

# ============================================================
# 2. EXECUTION ORDER
# ============================================================

execution_order:
1. create schema
2. create base registries
3. create employment and subscription tables
4. create capacity and lending tables
5. create advisory and execution tables
6. create output / audit tables
7. create indexes

# ============================================================
# 3. FIXED DDL
# ============================================================

ddl_sql:
create schema if not exists business_os;

create extension if not exists pgcrypto;

create table if not exists business_os.ai_worker_template (
  worker_template_id uuid primary key default gen_random_uuid(),
  template_name text not null,
  default_rank text not null,
  default_knowledge_depth text not null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_capability_profile (
  capability_profile_id uuid primary key default gen_random_uuid(),
  worker_template_id uuid not null references business_os.ai_worker_template(worker_template_id),
  specialty text not null,
  knowledge_depth text not null,
  supports_advisory boolean not null default false,
  supports_execution boolean not null default false,
  supports_embedded_app_work boolean not null default false,
  supports_forecasting boolean not null default false,
  supports_management_assistance boolean not null default false,
  supports_improvement_assistance boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_employment (
  employment_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  worker_template_id uuid not null references business_os.ai_worker_template(worker_template_id),
  subscribed_rank text not null,
  employment_status text not null,
  started_at timestamptz,
  ended_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_assignment (
  assignment_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  assignment_scope_type text not null,
  assignment_scope_id text not null,
  app_surface text,
  assigned_role_name text,
  assigned_at timestamptz not null default now(),
  released_at timestamptz,
  created_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_subscription (
  subscription_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  subscribed_rank text not null,
  subscribed_capacity integer not null,
  active_from timestamptz,
  active_until timestamptz,
  billing_status text not null,
  auto_renew boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_capacity_slot (
  capacity_slot_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  subscribed_rank text not null,
  slot_status text not null,
  current_lending_id uuid,
  reserved_for_reservation_id uuid,
  activated_at timestamptz,
  released_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_lending (
  lending_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  capacity_slot_id uuid references business_os.ai_worker_capacity_slot(capacity_slot_id),
  granted_rank text not null,
  activity_mode text not null,
  world_scope text not null,
  specialty text not null,
  knowledge_depth text not null,
  app_surface text,
  task_summary text,
  actor_id uuid,
  lending_status text not null,
  granted_at timestamptz,
  expires_at timestamptz,
  released_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_reservation (
  reservation_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  requested_rank text not null,
  requested_activity_mode text not null,
  requested_world_scope text not null,
  requested_specialty text not null,
  requested_knowledge_depth_min text not null,
  requested_app_surface text,
  requested_task_summary text,
  requested_duration_minutes integer,
  requested_priority text not null,
  actor_id uuid,
  queue_position integer,
  reservation_status text not null,
  estimated_available_at timestamptz,
  requested_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_company_terminology (
  terminology_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  term text not null,
  meaning text not null,
  department_scope text,
  specialty_scope text,
  synonym_group text,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_company_knowledge_entry (
  knowledge_entry_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  title text not null,
  specialty text not null,
  knowledge_depth text not null,
  content_type text not null,
  content_body text not null,
  source_type text,
  source_id text,
  reviewed_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_disclaimer (
  disclaimer_id uuid primary key default gen_random_uuid(),
  consultation_type text not null,
  specialty text,
  disclaimer_version text not null,
  disclaimer_text text not null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_consent (
  consent_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  actor_id uuid not null,
  consultation_type text not null,
  disclaimer_version text not null,
  accepted boolean not null,
  consented_at timestamptz not null default now(),
  expires_at timestamptz,
  created_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_advisory_session (
  advisory_session_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  lending_id uuid not null references business_os.ai_worker_lending(lending_id),
  consultation_type text not null,
  requested_specialty text not null,
  conversation_session_id text,
  disclaimer_version text,
  consent_id uuid references business_os.ai_worker_consent(consent_id),
  actor_id uuid,
  session_status text not null,
  started_at timestamptz,
  ended_at timestamptz,
  escalation_status text not null default 'none',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_execution_task (
  execution_task_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  lending_id uuid not null references business_os.ai_worker_lending(lending_id),
  work_order_id text,
  task_type text not null,
  requested_specialty text not null,
  requested_output text,
  platform_target text,
  actor_id uuid,
  execution_status text not null,
  review_required boolean not null default false,
  approval_required boolean not null default false,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_output_handoff (
  output_handoff_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  execution_task_id uuid not null references business_os.ai_worker_execution_task(execution_task_id),
  output_type text not null,
  output_title text,
  output_body text,
  target_app_surface text,
  review_required boolean not null default false,
  approval_required boolean not null default false,
  handoff_status text not null,
  actor_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_usage_log (
  usage_log_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid not null,
  lending_id uuid not null references business_os.ai_worker_lending(lending_id),
  activity_mode text not null,
  app_surface text,
  actor_id uuid,
  started_at timestamptz not null default now(),
  ended_at timestamptz,
  outcome_type text,
  created_at timestamptz not null default now()
);

create table if not exists business_os.ai_worker_audit_trace (
  audit_trace_id uuid primary key default gen_random_uuid(),
  company_id uuid not null,
  worker_id uuid,
  lending_id uuid,
  reservation_id uuid,
  advisory_session_id uuid,
  execution_task_id uuid,
  output_handoff_id uuid,
  consent_id uuid,
  trace_type text not null,
  trace_payload text,
  created_at timestamptz not null default now()
);

create index if not exists idx_ai_worker_employment_company on business_os.ai_worker_employment(company_id);
create index if not exists idx_ai_worker_employment_worker on business_os.ai_worker_employment(worker_id);
create index if not exists idx_ai_worker_employment_status on business_os.ai_worker_employment(employment_status);

create index if not exists idx_ai_worker_assignment_company on business_os.ai_worker_assignment(company_id);
create index if not exists idx_ai_worker_assignment_worker on business_os.ai_worker_assignment(worker_id);
create index if not exists idx_ai_worker_assignment_surface on business_os.ai_worker_assignment(app_surface);

create index if not exists idx_ai_worker_subscription_company on business_os.ai_worker_subscription(company_id);
create index if not exists idx_ai_worker_subscription_rank on business_os.ai_worker_subscription(subscribed_rank);
create index if not exists idx_ai_worker_subscription_billing on business_os.ai_worker_subscription(billing_status);

create index if not exists idx_ai_worker_capacity_slot_company on business_os.ai_worker_capacity_slot(company_id);
create index if not exists idx_ai_worker_capacity_slot_rank on business_os.ai_worker_capacity_slot(subscribed_rank);
create index if not exists idx_ai_worker_capacity_slot_status on business_os.ai_worker_capacity_slot(slot_status);

create index if not exists idx_ai_worker_lending_company on business_os.ai_worker_lending(company_id);
create index if not exists idx_ai_worker_lending_worker on business_os.ai_worker_lending(worker_id);
create index if not exists idx_ai_worker_lending_status on business_os.ai_worker_lending(lending_status);
create index if not exists idx_ai_worker_lending_mode on business_os.ai_worker_lending(activity_mode);

create index if not exists idx_ai_worker_reservation_company on business_os.ai_worker_reservation(company_id);
create index if not exists idx_ai_worker_reservation_rank on business_os.ai_worker_reservation(requested_rank);
create index if not exists idx_ai_worker_reservation_status on business_os.ai_worker_reservation(reservation_status);
create index if not exists idx_ai_worker_reservation_queue on business_os.ai_worker_reservation(queue_position);

create index if not exists idx_ai_worker_terminology_company on business_os.ai_worker_company_terminology(company_id);
create index if not exists idx_ai_worker_terminology_term on business_os.ai_worker_company_terminology(term);

create index if not exists idx_ai_worker_knowledge_company on business_os.ai_worker_company_knowledge_entry(company_id);
create index if not exists idx_ai_worker_knowledge_specialty on business_os.ai_worker_company_knowledge_entry(specialty);

create index if not exists idx_ai_worker_disclaimer_type on business_os.ai_worker_disclaimer(consultation_type);
create index if not exists idx_ai_worker_disclaimer_version on business_os.ai_worker_disclaimer(disclaimer_version);

create index if not exists idx_ai_worker_consent_company on business_os.ai_worker_consent(company_id);
create index if not exists idx_ai_worker_consent_actor on business_os.ai_worker_consent(actor_id);
create index if not exists idx_ai_worker_consent_type on business_os.ai_worker_consent(consultation_type);

create index if not exists idx_ai_worker_advisory_company on business_os.ai_worker_advisory_session(company_id);
create index if not exists idx_ai_worker_advisory_worker on business_os.ai_worker_advisory_session(worker_id);
create index if not exists idx_ai_worker_advisory_status on business_os.ai_worker_advisory_session(session_status);

create index if not exists idx_ai_worker_execution_company on business_os.ai_worker_execution_task(company_id);
create index if not exists idx_ai_worker_execution_worker on business_os.ai_worker_execution_task(worker_id);
create index if not exists idx_ai_worker_execution_status on business_os.ai_worker_execution_task(execution_status);
create index if not exists idx_ai_worker_execution_type on business_os.ai_worker_execution_task(task_type);

create index if not exists idx_ai_worker_handoff_company on business_os.ai_worker_output_handoff(company_id);
create index if not exists idx_ai_worker_handoff_task on business_os.ai_worker_output_handoff(execution_task_id);
create index if not exists idx_ai_worker_handoff_status on business_os.ai_worker_output_handoff(handoff_status);

create index if not exists idx_ai_worker_usage_company on business_os.ai_worker_usage_log(company_id);
create index if not exists idx_ai_worker_usage_worker on business_os.ai_worker_usage_log(worker_id);
create index if not exists idx_ai_worker_usage_lending on business_os.ai_worker_usage_log(lending_id);

create index if not exists idx_ai_worker_audit_company on business_os.ai_worker_audit_trace(company_id);
create index if not exists idx_ai_worker_audit_lending on business_os.ai_worker_audit_trace(lending_id);
create index if not exists idx_ai_worker_audit_reservation on business_os.ai_worker_audit_trace(reservation_id);
create index if not exists idx_ai_worker_audit_advisory on business_os.ai_worker_audit_trace(advisory_session_id);
create index if not exists idx_ai_worker_audit_execution on business_os.ai_worker_audit_trace(execution_task_id);
create index if not exists idx_ai_worker_audit_handoff on business_os.ai_worker_audit_trace(output_handoff_id);

# ============================================================
# 4. EXECUTION NOTES
# ============================================================

notes:
- exact enum values must be inserted by application logic using fixed strings
- check constraints may be added later if desired
- foreign keys to company master or user master are intentionally not fixed here
  unless those canonical master bindings are separately fixed

# ============================================================
# 5. OFFICIAL SUMMARY
# ============================================================

This file fixes the execution-ready DDL structure
for Business AI Worker persistence.

It is the immediate bridge
between fixed design and actual DB creation.
