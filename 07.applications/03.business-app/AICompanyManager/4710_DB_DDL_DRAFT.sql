-- ============================================================
-- AICompanyManager DB DDL Draft
-- Phase AX
-- reviewer: 佐藤（DB担当）
-- db_apply: false
-- DO NOT EXECUTE WITHOUT BOSS DB OK
-- ============================================================

create schema if not exists business;

create table if not exists business.ai_company_manager_company (
  company_id uuid primary key default gen_random_uuid(),
  company_name text not null,
  business_domain text not null default '',
  company_status text not null default 'active',
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_company_status_chk check (company_status in ('active','inactive','archived'))
);

create table if not exists business.ai_company_manager_company_rule_file (
  rule_file_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  file_name text not null,
  file_kind text not null default 'company_common_rule',
  storage_scope text not null default 'metadata_only',
  storage_ref text null,
  file_size_bytes bigint null,
  mime_type text null,
  rule_status text not null default 'active',
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_rule_status_chk check (rule_status in ('active','inactive','archived'))
);

create table if not exists business.ai_company_manager_department (
  department_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_name text not null,
  purpose text not null default '',
  department_status text not null default 'active',
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_department_status_chk check (department_status in ('active','inactive','archived'))
);

create table if not exists business.ai_company_manager_organization (
  organization_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  parent_organization_id uuid null references business.ai_company_manager_organization(organization_id),
  organization_name text not null,
  purpose text not null default '',
  organization_status text not null default 'active',
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_organization_status_chk check (organization_status in ('active','inactive','archived'))
);

create table if not exists business.ai_company_manager_organization_robot_assignment (
  assignment_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  organization_id uuid not null references business.ai_company_manager_organization(organization_id),
  aiworker_robot_id uuid not null,
  display_name text not null default '',
  role_name text not null,
  assignment_status text not null default 'active',
  assigned_at timestamptz not null default now(),
  unassigned_at timestamptz null,
  note text not null default '',
  constraint aicm_assignment_status_chk check (assignment_status in ('active','inactive','removed')),
  constraint aicm_assignment_role_chk check (role_name in ('Manager','Leader','Worker','Reviewer'))
);

create table if not exists business.ai_company_manager_csv_import_batch (
  csv_import_batch_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  original_file_name text not null,
  row_count integer not null default 0,
  valid_row_count integer not null default 0,
  invalid_row_count integer not null default 0,
  import_status text not null default 'previewed',
  imported_by_user_id uuid null,
  imported_at timestamptz null,
  created_at timestamptz not null default now(),
  constraint aicm_import_status_chk check (import_status in ('previewed','imported','partially_imported','failed','cancelled'))
);

create table if not exists business.ai_company_manager_department_task_ledger (
  ledger_row_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  deliverable_name text not null,
  task_name text not null,
  work_type text not null,
  task_status text not null default '未着手',
  priority text not null default '中',
  due_date date null,
  note text not null default '',
  source_type text not null default 'manual',
  csv_import_batch_id uuid null references business.ai_company_manager_csv_import_batch(csv_import_batch_id),
  ai_workflow_run_id uuid null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_work_type_chk check (work_type in ('設計','実装','デザイン','修正','調査','レビュー','資料作成','納品準備','引き継ぎ')),
  constraint aicm_task_status_chk check (task_status in ('未着手','進行中','レビュー中','完了','保留')),
  constraint aicm_priority_chk check (priority in ('高','中','低')),
  constraint aicm_source_type_chk check (source_type in ('manual','csv','ai_generated','imported'))
);

create table if not exists business.ai_company_manager_task_file_metadata (
  task_file_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  ledger_row_id uuid not null references business.ai_company_manager_department_task_ledger(ledger_row_id),
  file_role text not null,
  file_name text not null,
  storage_scope text not null default 'metadata_only',
  storage_ref text null,
  file_size_bytes bigint null,
  mime_type text null,
  note text not null default '',
  created_at timestamptz not null default now(),
  constraint aicm_file_role_chk check (file_role in ('reference_file','supplemental_material'))
);

create table if not exists business.ai_company_manager_csv_import_row (
  csv_import_row_id uuid primary key default gen_random_uuid(),
  csv_import_batch_id uuid not null references business.ai_company_manager_csv_import_batch(csv_import_batch_id),
  row_number integer not null,
  raw_row_json jsonb not null,
  parsed_row_json jsonb not null default '{}'::jsonb,
  validation_status text not null,
  validation_errors jsonb not null default '[]'::jsonb,
  created_ledger_row_id uuid null references business.ai_company_manager_department_task_ledger(ledger_row_id),
  created_at timestamptz not null default now(),
  constraint aicm_validation_status_chk check (validation_status in ('valid','invalid','skipped','imported'))
);

create table if not exists business.ai_company_manager_ai_workflow_run (
  ai_workflow_run_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  ledger_row_id uuid not null references business.ai_company_manager_department_task_ledger(ledger_row_id),
  workflow_type text not null,
  workflow_status text not null default 'queued',
  started_at timestamptz null,
  completed_at timestamptz null,
  error_message text not null default '',
  created_at timestamptz not null default now(),
  constraint aicm_workflow_type_chk check (workflow_type in ('manager_breakdown','leader_allocation','worker_deliverable_creation','ai_auto_review')),
  constraint aicm_workflow_status_chk check (workflow_status in ('queued','running','completed','failed','cancelled','waiting'))
);

create table if not exists business.ai_company_manager_ai_workflow_step (
  ai_workflow_step_id uuid primary key default gen_random_uuid(),
  ai_workflow_run_id uuid not null references business.ai_company_manager_ai_workflow_run(ai_workflow_run_id),
  step_name text not null,
  step_status text not null default 'queued',
  actor_role text not null,
  aiworker_robot_id uuid null,
  input_summary text not null default '',
  output_summary text not null default '',
  error_message text not null default '',
  started_at timestamptz null,
  completed_at timestamptz null,
  created_at timestamptz not null default now(),
  constraint aicm_step_status_chk check (step_status in ('queued','running','completed','failed','cancelled','waiting')),
  constraint aicm_actor_role_chk check (actor_role in ('Manager','Leader','Worker','Reviewer'))
);

create table if not exists business.ai_company_manager_delivery_candidate (
  delivery_candidate_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  ledger_row_id uuid not null references business.ai_company_manager_department_task_ledger(ledger_row_id),
  candidate_title text not null,
  candidate_status text not null default 'draft',
  output_summary text not null default '',
  output_ref text null,
  ai_review_summary text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_candidate_status_chk check (candidate_status in ('draft','ai_reviewed','approval_waiting','approved','rejected','revision_required'))
);

create table if not exists business.ai_company_manager_review_item (
  review_item_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid not null references business.ai_company_manager_department(department_id),
  ledger_row_id uuid null references business.ai_company_manager_department_task_ledger(ledger_row_id),
  delivery_candidate_id uuid null references business.ai_company_manager_delivery_candidate(delivery_candidate_id),
  review_title text not null,
  review_status text not null default '承認待ち',
  target_name text not null default '',
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint aicm_review_status_chk check (review_status in ('承認待ち','承認済み','差し戻し','修正待ち','取消'))
);

create table if not exists business.ai_company_manager_review_action (
  review_action_id uuid primary key default gen_random_uuid(),
  review_item_id uuid not null references business.ai_company_manager_review_item(review_item_id),
  action_type text not null,
  actor_user_id uuid null,
  comment text not null default '',
  action_at timestamptz not null default now(),
  constraint aicm_review_action_type_chk check (action_type in ('approve','reject','request_revision'))
);

create index if not exists idx_aicm_company_status on business.ai_company_manager_company(company_status);
create index if not exists idx_aicm_department_company on business.ai_company_manager_department(company_id);
create index if not exists idx_aicm_org_department on business.ai_company_manager_organization(department_id);
create index if not exists idx_aicm_robot_org on business.ai_company_manager_organization_robot_assignment(organization_id);
create index if not exists idx_aicm_ledger_department on business.ai_company_manager_department_task_ledger(department_id);
create index if not exists idx_aicm_ledger_status on business.ai_company_manager_department_task_ledger(task_status);
create index if not exists idx_aicm_task_file_ledger on business.ai_company_manager_task_file_metadata(ledger_row_id);
create index if not exists idx_aicm_csv_batch_department on business.ai_company_manager_csv_import_batch(department_id);
create index if not exists idx_aicm_csv_row_batch on business.ai_company_manager_csv_import_row(csv_import_batch_id);
create index if not exists idx_aicm_workflow_ledger on business.ai_company_manager_ai_workflow_run(ledger_row_id);
create index if not exists idx_aicm_step_run on business.ai_company_manager_ai_workflow_step(ai_workflow_run_id);
create index if not exists idx_aicm_delivery_ledger on business.ai_company_manager_delivery_candidate(ledger_row_id);
create index if not exists idx_aicm_review_status on business.ai_company_manager_review_item(review_status);
create index if not exists idx_aicm_review_action_item on business.ai_company_manager_review_action(review_item_id);
