-- ============================================================
-- AICompanyManager 02 Base Tables Refined Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- target_db: Persona-side DB
-- schema: business
-- ============================================================

create schema if not exists business;

create table if not exists business.aicm_company (
  company_id uuid primary key default gen_random_uuid(),
  company_name text not null,
  business_domain text not null default '',
  company_status text not null default 'active'
    check (company_status in ('active','inactive','archived')),
  company_common_rules_text text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_actor_membership (
  membership_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  actor_user_id uuid not null,
  actor_role text not null
    check (actor_role in ('Owner','Admin','Manager','Leader','Worker','Reviewer','Viewer')),
  membership_status text not null default 'active'
    check (membership_status in ('active','inactive','revoked')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (company_id, actor_user_id, actor_role)
);

create table if not exists business.aicm_department (
  department_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_name text not null,
  purpose text not null default '',
  department_status text not null default 'active'
    check (department_status in ('active','inactive','archived')),
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_organization (
  organization_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid not null references business.aicm_department(department_id) on delete cascade,
  parent_organization_id uuid references business.aicm_organization(organization_id) on delete set null,
  organization_name text not null,
  purpose text not null default '',
  organization_status text not null default 'active'
    check (organization_status in ('active','inactive','archived')),
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_organization_robot_assignment (
  assignment_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid not null references business.aicm_department(department_id) on delete cascade,
  organization_id uuid not null references business.aicm_organization(organization_id) on delete cascade,
  aiworker_robot_id uuid not null,
  role_name text not null default 'Worker'
    check (role_name in ('Manager','Leader','Worker','Reviewer','Assistant')),
  display_name text not null default '',
  assignment_status text not null default 'active'
    check (assignment_status in ('active','inactive','removed')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (organization_id, aiworker_robot_id, role_name)
);

create table if not exists business.aicm_department_task_ledger (
  ledger_row_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid not null references business.aicm_department(department_id) on delete cascade,
  deliverable_name text not null,
  task_name text not null,
  work_type text not null
    check (work_type in ('設計','実装','デザイン','修正','調査','レビュー','資料作成','納品準備','引き継ぎ')),
  task_status text not null default '未着手'
    check (task_status in ('未着手','進行中','レビュー中','完了','保留')),
  priority text not null default '中'
    check (priority in ('高','中','低')),
  due_date date,
  responsible_role text not null default 'Manager'
    check (responsible_role in ('Manager','Leader','Worker')),
  responsible_robot_id uuid,
  source_type text not null default 'manual'
    check (source_type in ('manual','csv','president_policy','manager_breakdown','leader_breakdown','ai_generated')),
  handoff_link text not null default '',
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_task_file_metadata (
  task_file_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid not null references business.aicm_department(department_id) on delete cascade,
  ledger_row_id uuid references business.aicm_department_task_ledger(ledger_row_id) on delete cascade,
  file_role text not null
    check (file_role in ('reference_file','supplemental_material','deliverable','company_common_rule')),
  file_name text not null,
  storage_scope text not null default 'metadata_only'
    check (storage_scope in ('metadata_only','local_only','cloud_storage')),
  storage_ref text,
  mime_type text not null default '',
  file_size_bytes bigint not null default 0,
  note text not null default '',
  created_at timestamptz not null default now()
);

create table if not exists business.aicm_task_ledger_csv_import_batch (
  csv_import_batch_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid not null references business.aicm_department(department_id) on delete cascade,
  original_file_name text not null default '',
  import_status text not null default 'previewed'
    check (import_status in ('previewed','imported','failed','cancelled')),
  imported_count integer not null default 0,
  invalid_count integer not null default 0,
  created_by uuid,
  created_at timestamptz not null default now()
);

create table if not exists business.aicm_task_ledger_csv_import_row (
  csv_import_row_id uuid primary key default gen_random_uuid(),
  csv_import_batch_id uuid not null references business.aicm_task_ledger_csv_import_batch(csv_import_batch_id) on delete cascade,
  row_number integer not null,
  raw_payload jsonb not null default '{}'::jsonb,
  validation_status text not null default 'valid'
    check (validation_status in ('valid','invalid')),
  validation_errors jsonb not null default '[]'::jsonb,
  ledger_row_id uuid references business.aicm_department_task_ledger(ledger_row_id) on delete set null,
  created_at timestamptz not null default now()
);

create table if not exists business.aicm_review_item (
  review_item_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid references business.aicm_department(department_id) on delete cascade,
  ledger_row_id uuid references business.aicm_department_task_ledger(ledger_row_id) on delete set null,
  review_title text not null,
  target_name text not null default '',
  review_status text not null default '承認待ち'
    check (review_status in ('承認待ち','承認済み','差し戻し','修正待ち','完了','取消')),
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_review_action (
  review_action_id uuid primary key default gen_random_uuid(),
  review_item_id uuid not null references business.aicm_review_item(review_item_id) on delete cascade,
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  action_type text not null
    check (action_type in ('approve','reject','request_revision','comment')),
  action_status_after text not null,
  actor_user_id uuid,
  actor_role text not null default 'Reviewer',
  idempotency_key text,
  comment text not null default '',
  created_at timestamptz not null default now()
);

create unique index if not exists uq_aicm_review_action_idempotency
  on business.aicm_review_action(company_id, idempotency_key)
  where idempotency_key is not null and idempotency_key <> '';

create table if not exists business.aicm_workflow_run (
  workflow_run_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.aicm_company(company_id) on delete cascade,
  department_id uuid references business.aicm_department(department_id) on delete set null,
  ledger_row_id uuid references business.aicm_department_task_ledger(ledger_row_id) on delete set null,
  workflow_type text not null default 'local_stub'
    check (workflow_type in ('local_stub','manager_breakdown','leader_assignment','worker_deliverable','review')),
  workflow_status text not null default 'queued'
    check (workflow_status in ('queued','running','completed','failed','cancelled')),
  live_aiworkeros_call boolean not null default false,
  real_api_connect boolean not null default false,
  request_payload jsonb not null default '{}'::jsonb,
  result_payload jsonb not null default '{}'::jsonb,
  error_payload jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists business.aicm_workflow_step (
  workflow_step_id uuid primary key default gen_random_uuid(),
  workflow_run_id uuid not null references business.aicm_workflow_run(workflow_run_id) on delete cascade,
  step_order integer not null default 100,
  step_name text not null,
  step_status text not null default 'queued'
    check (step_status in ('queued','running','completed','failed','skipped','cancelled')),
  assigned_role text not null default 'Worker'
    check (assigned_role in ('Manager','Leader','Worker','Reviewer','System')),
  assigned_robot_id uuid,
  input_payload jsonb not null default '{}'::jsonb,
  output_payload jsonb not null default '{}'::jsonb,
  error_payload jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_aicm_actor_membership_company_user
  on business.aicm_actor_membership(company_id, actor_user_id);

create index if not exists idx_aicm_department_company
  on business.aicm_department(company_id);

create index if not exists idx_aicm_organization_company_department
  on business.aicm_organization(company_id, department_id);

create index if not exists idx_aicm_task_ledger_company_department
  on business.aicm_department_task_ledger(company_id, department_id);

create index if not exists idx_aicm_review_item_company_department
  on business.aicm_review_item(company_id, department_id);

create index if not exists idx_aicm_workflow_run_company_department
  on business.aicm_workflow_run(company_id, department_id);
