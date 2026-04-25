-- ============================================================
-- AICompanyManager Persona RLS SQL Candidate
-- ============================================================
-- app_name: AICompanyManager
-- display_name: AI企業運営アプリ
-- phase: Phase F
-- status: rls-sql-candidate-only
-- db_target: PERSONA_DATABASE_URL
--
-- IMPORTANT:
-- Candidate only. Do not execute in Phase F.
-- Apply only after Boss explicit RLS OK / GO and Sato DB review OK.
-- ============================================================

-- 1. Enable RLS candidates

alter table business.ai_company_manager_company enable row level security;
alter table business.ai_company_manager_project enable row level security;
alter table business.ai_company_manager_policy enable row level security;
alter table business.ai_company_manager_pipeline_run enable row level security;
alter table business.ai_company_manager_role_assignment enable row level security;
alter table business.ai_company_manager_stage enable row level security;
alter table business.ai_company_manager_deliverable enable row level security;
alter table business.ai_company_manager_review enable row level security;
alter table business.ai_company_manager_return_request enable row level security;
alter table business.ai_company_manager_approval enable row level security;
alter table business.ai_company_manager_delivery enable row level security;
alter table business.ai_company_manager_queue_item enable row level security;
alter table business.ai_company_manager_audit_log enable row level security;

-- 2. Direct owner policies

create policy aicm_company_owner_select
on business.ai_company_manager_company
for select
using (owner_user_id = auth.uid());

create policy aicm_company_owner_insert
on business.ai_company_manager_company
for insert
with check (owner_user_id = auth.uid());

create policy aicm_company_owner_update
on business.ai_company_manager_company
for update
using (owner_user_id = auth.uid())
with check (owner_user_id = auth.uid());

create policy aicm_project_owner_select
on business.ai_company_manager_project
for select
using (owner_user_id = auth.uid());

create policy aicm_project_owner_insert
on business.ai_company_manager_project
for insert
with check (owner_user_id = auth.uid());

create policy aicm_project_owner_update
on business.ai_company_manager_project
for update
using (owner_user_id = auth.uid())
with check (owner_user_id = auth.uid());

-- 3. Project-derived policies

create policy aicm_policy_project_owner_select
on business.ai_company_manager_policy
for select
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_policy.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_policy_project_owner_insert
on business.ai_company_manager_policy
for insert
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_policy.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_policy_project_owner_update
on business.ai_company_manager_policy
for update
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_policy.project_id
      and p.owner_user_id = auth.uid()
  )
)
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_policy.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_approval_project_owner_select
on business.ai_company_manager_approval
for select
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_approval.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_approval_project_owner_insert
on business.ai_company_manager_approval
for insert
with check (
  approver_user_id = auth.uid()
  and exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_approval.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_approval_project_owner_update
on business.ai_company_manager_approval
for update
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_approval.project_id
      and p.owner_user_id = auth.uid()
  )
)
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_approval.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_delivery_project_owner_select
on business.ai_company_manager_delivery
for select
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_delivery.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_delivery_project_owner_insert
on business.ai_company_manager_delivery
for insert
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_delivery.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_delivery_project_owner_update
on business.ai_company_manager_delivery
for update
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_delivery.project_id
      and p.owner_user_id = auth.uid()
  )
)
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_delivery.project_id
      and p.owner_user_id = auth.uid()
  )
);

-- 4. Pipeline-derived policies

create policy aicm_pipeline_owner_select
on business.ai_company_manager_pipeline_run
for select
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_pipeline_run.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_pipeline_owner_insert
on business.ai_company_manager_pipeline_run
for insert
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_pipeline_run.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_pipeline_owner_update
on business.ai_company_manager_pipeline_run
for update
using (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_pipeline_run.project_id
      and p.owner_user_id = auth.uid()
  )
)
with check (
  exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_pipeline_run.project_id
      and p.owner_user_id = auth.uid()
  )
);

-- child tables using pipeline_run_id
-- Recommended pattern is repeated per table in the guarded apply draft:
-- exists pipeline_run r join project p where r.pipeline_run_id = row.pipeline_run_id and p.owner_user_id = auth.uid()

-- 5. Queue policies

create policy aicm_queue_owner_select
on business.ai_company_manager_queue_item
for select
using (owner_user_id = auth.uid());

create policy aicm_queue_owner_insert
on business.ai_company_manager_queue_item
for insert
with check (owner_user_id = auth.uid());

create policy aicm_queue_owner_update
on business.ai_company_manager_queue_item
for update
using (owner_user_id = auth.uid())
with check (owner_user_id = auth.uid());

-- 6. Audit policies

create policy aicm_audit_owner_select
on business.ai_company_manager_audit_log
for select
using (
  owner_user_id = auth.uid()
  or exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_audit_log.project_id
      and p.owner_user_id = auth.uid()
  )
);

create policy aicm_audit_owner_insert
on business.ai_company_manager_audit_log
for insert
with check (
  owner_user_id = auth.uid()
  or exists (
    select 1
    from business.ai_company_manager_project p
    where p.project_id = ai_company_manager_audit_log.project_id
      and p.owner_user_id = auth.uid()
  )
);

-- No update/delete policies for audit_log by default.
