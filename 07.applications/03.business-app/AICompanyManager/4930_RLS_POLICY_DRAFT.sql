-- ============================================================
-- AICompanyManager RLS Policy Draft
-- Phase AZ
-- reviewer: 佐藤（DB担当）
-- rls_apply: false
-- DO NOT EXECUTE WITHOUT BOSS DB OK
-- ============================================================

-- NOTE:
-- This is a draft only.
-- It assumes auth.uid() is available.
-- It assumes the membership table below will exist if adopted.

-- ------------------------------------------------------------
-- 0. Membership table candidate
-- ------------------------------------------------------------

create table if not exists business.ai_company_manager_actor_membership (
  membership_id uuid primary key default gen_random_uuid(),
  company_id uuid not null references business.ai_company_manager_company(company_id),
  department_id uuid null references business.ai_company_manager_department(department_id),
  organization_id uuid null references business.ai_company_manager_organization(organization_id),
  actor_user_id uuid not null,
  actor_role text not null,
  membership_status text not null default 'active',
  created_at timestamptz not null default now(),
  constraint aicm_actor_role_chk check (
    actor_role in (
      'owner_user',
      'company_admin',
      'department_manager_user',
      'reviewer_user',
      'readonly_user'
    )
  ),
  constraint aicm_membership_status_chk check (
    membership_status in ('active','inactive','revoked')
  )
);

create index if not exists idx_aicm_actor_membership_user_company
  on business.ai_company_manager_actor_membership(actor_user_id, company_id);

create index if not exists idx_aicm_actor_membership_company
  on business.ai_company_manager_actor_membership(company_id);

create index if not exists idx_aicm_actor_membership_department
  on business.ai_company_manager_actor_membership(department_id);

-- ------------------------------------------------------------
-- 1. Helper function candidates
-- ------------------------------------------------------------

create or replace function business.aicm_can_read_company(p_company_id uuid)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
    from business.ai_company_manager_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and m.actor_role in (
        'owner_user',
        'company_admin',
        'department_manager_user',
        'reviewer_user',
        'readonly_user'
      )
  );
$$;

create or replace function business.aicm_can_write_company(p_company_id uuid)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
    from business.ai_company_manager_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and m.actor_role in (
        'owner_user',
        'company_admin'
      )
  );
$$;

create or replace function business.aicm_can_write_department(p_company_id uuid, p_department_id uuid)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
    from business.ai_company_manager_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and (
        m.actor_role in ('owner_user','company_admin')
        or (
          m.actor_role = 'department_manager_user'
          and m.department_id = p_department_id
        )
      )
  );
$$;

create or replace function business.aicm_can_review_company(p_company_id uuid)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
    from business.ai_company_manager_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and m.actor_role in (
        'owner_user',
        'company_admin',
        'reviewer_user'
      )
  );
$$;

-- ------------------------------------------------------------
-- 2. RLS enable draft
-- ------------------------------------------------------------

alter table business.ai_company_manager_company enable row level security;
alter table business.ai_company_manager_company_rule_file enable row level security;
alter table business.ai_company_manager_department enable row level security;
alter table business.ai_company_manager_organization enable row level security;
alter table business.ai_company_manager_organization_robot_assignment enable row level security;
alter table business.ai_company_manager_department_task_ledger enable row level security;
alter table business.ai_company_manager_task_file_metadata enable row level security;
alter table business.ai_company_manager_csv_import_batch enable row level security;
alter table business.ai_company_manager_csv_import_row enable row level security;
alter table business.ai_company_manager_ai_workflow_run enable row level security;
alter table business.ai_company_manager_ai_workflow_step enable row level security;
alter table business.ai_company_manager_delivery_candidate enable row level security;
alter table business.ai_company_manager_review_item enable row level security;
alter table business.ai_company_manager_review_action enable row level security;
alter table business.ai_company_manager_actor_membership enable row level security;

-- ------------------------------------------------------------
-- 3. Policy examples
-- ------------------------------------------------------------

create policy aicm_company_select
on business.ai_company_manager_company
for select
using (business.aicm_can_read_company(company_id));

create policy aicm_company_update
on business.ai_company_manager_company
for update
using (business.aicm_can_write_company(company_id))
with check (business.aicm_can_write_company(company_id));

create policy aicm_department_select
on business.ai_company_manager_department
for select
using (business.aicm_can_read_company(company_id));

create policy aicm_department_write
on business.ai_company_manager_department
for all
using (business.aicm_can_write_company(company_id))
with check (business.aicm_can_write_company(company_id));

create policy aicm_organization_select
on business.ai_company_manager_organization
for select
using (business.aicm_can_read_company(company_id));

create policy aicm_organization_write
on business.ai_company_manager_organization
for all
using (business.aicm_can_write_company(company_id))
with check (business.aicm_can_write_company(company_id));

create policy aicm_ledger_select
on business.ai_company_manager_department_task_ledger
for select
using (business.aicm_can_read_company(company_id));

create policy aicm_ledger_write
on business.ai_company_manager_department_task_ledger
for all
using (business.aicm_can_write_department(company_id, department_id))
with check (business.aicm_can_write_department(company_id, department_id));

create policy aicm_review_select
on business.ai_company_manager_review_item
for select
using (business.aicm_can_read_company(company_id));

create policy aicm_review_update
on business.ai_company_manager_review_item
for update
using (business.aicm_can_review_company(company_id))
with check (business.aicm_can_review_company(company_id));

-- ------------------------------------------------------------
-- 4. Draft note
-- ------------------------------------------------------------

-- review_action insert policy needs careful audit design.
-- workflow_run/step and delivery_candidate write should likely be service-role-only
-- or RPC-based in a later phase.
