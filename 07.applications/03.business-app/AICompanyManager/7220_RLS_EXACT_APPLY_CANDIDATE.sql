-- ============================================================
-- AICompanyManager RLS Exact Apply Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- target_db: Persona-side DB
-- schema: business
-- required_env_when_apply: PERSONA_DATABASE_URL
-- forbidden_env_when_apply: DATABASE_URL
-- ============================================================

create or replace function business.aicm_current_user_id()
returns uuid
language sql
stable
as $$
  select auth.uid()
$$;

create or replace function business.aicm_can_access_company(p_company_id uuid)
returns boolean
language sql
stable
security definer
set search_path = business, public
as $$
  select exists (
    select 1
    from business.aicm_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
  )
$$;

create or replace function business.aicm_has_company_role(p_company_id uuid, p_roles text[])
returns boolean
language sql
stable
security definer
set search_path = business, public
as $$
  select exists (
    select 1
    from business.aicm_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and m.actor_role = any(p_roles)
  )
$$;

alter table business.aicm_company enable row level security;
alter table business.aicm_actor_membership enable row level security;
alter table business.aicm_company_common_rule_file enable row level security;
alter table business.aicm_department enable row level security;
alter table business.aicm_organization enable row level security;
alter table business.aicm_organization_robot_assignment enable row level security;
alter table business.aicm_department_task_ledger enable row level security;
alter table business.aicm_task_file_metadata enable row level security;
alter table business.aicm_task_ledger_csv_import_batch enable row level security;
alter table business.aicm_task_ledger_csv_import_row enable row level security;
alter table business.aicm_review_item enable row level security;
alter table business.aicm_review_action enable row level security;
alter table business.aicm_workflow_run enable row level security;
alter table business.aicm_workflow_step enable row level security;

drop policy if exists aicm_company_select on business.aicm_company;
create policy aicm_company_select
on business.aicm_company
for select
using (business.aicm_can_access_company(company_id));

drop policy if exists aicm_company_insert_owner_admin on business.aicm_company;
create policy aicm_company_insert_owner_admin
on business.aicm_company
for insert
with check (auth.uid() is not null);

drop policy if exists aicm_company_update_admin on business.aicm_company;
create policy aicm_company_update_admin
on business.aicm_company
for update
using (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_membership_select on business.aicm_actor_membership;
create policy aicm_membership_select
on business.aicm_actor_membership
for select
using (
  actor_user_id = auth.uid()
  or business.aicm_has_company_role(company_id, array['Owner','Admin','Manager'])
);

drop policy if exists aicm_membership_manage_admin on business.aicm_actor_membership;
create policy aicm_membership_manage_admin
on business.aicm_actor_membership
for all
using (business.aicm_has_company_role(company_id, array['Owner','Admin']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin']));

drop policy if exists aicm_department_select on business.aicm_department;
create policy aicm_department_select
on business.aicm_department
for select
using (business.aicm_can_access_company(company_id));

drop policy if exists aicm_department_manage_manager on business.aicm_department;
create policy aicm_department_manage_manager
on business.aicm_department
for all
using (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_organization_select on business.aicm_organization;
create policy aicm_organization_select
on business.aicm_organization
for select
using (business.aicm_can_access_company(company_id));

drop policy if exists aicm_organization_manage_manager on business.aicm_organization;
create policy aicm_organization_manage_manager
on business.aicm_organization
for all
using (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_company_common_rule_file_access on business.aicm_company_common_rule_file;
create policy aicm_company_common_rule_file_access
on business.aicm_company_common_rule_file
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_robot_assignment_access on business.aicm_organization_robot_assignment;
create policy aicm_robot_assignment_access
on business.aicm_organization_robot_assignment
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_task_ledger_select on business.aicm_department_task_ledger;
create policy aicm_task_ledger_select
on business.aicm_department_task_ledger
for select
using (business.aicm_can_access_company(company_id));

drop policy if exists aicm_task_ledger_manage on business.aicm_department_task_ledger;
create policy aicm_task_ledger_manage
on business.aicm_department_task_ledger
for all
using (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Worker']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Worker']));

drop policy if exists aicm_task_file_metadata_access on business.aicm_task_file_metadata;
create policy aicm_task_file_metadata_access
on business.aicm_task_file_metadata
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Worker']));

drop policy if exists aicm_csv_batch_access on business.aicm_task_ledger_csv_import_batch;
create policy aicm_csv_batch_access
on business.aicm_task_ledger_csv_import_batch
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_csv_row_access on business.aicm_task_ledger_csv_import_row;
create policy aicm_csv_row_access
on business.aicm_task_ledger_csv_import_row
for all
using (
  exists (
    select 1
    from business.aicm_task_ledger_csv_import_batch b
    where b.csv_import_batch_id = aicm_task_ledger_csv_import_row.csv_import_batch_id
      and business.aicm_can_access_company(b.company_id)
  )
)
with check (
  exists (
    select 1
    from business.aicm_task_ledger_csv_import_batch b
    where b.csv_import_batch_id = aicm_task_ledger_csv_import_row.csv_import_batch_id
      and business.aicm_has_company_role(b.company_id, array['Owner','Admin','Manager','Leader'])
  )
);

drop policy if exists aicm_review_item_access on business.aicm_review_item;
create policy aicm_review_item_access
on business.aicm_review_item
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Reviewer']));

drop policy if exists aicm_review_action_access on business.aicm_review_action;
create policy aicm_review_action_access
on business.aicm_review_action
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Reviewer']));

drop policy if exists aicm_workflow_run_access on business.aicm_workflow_run;
create policy aicm_workflow_run_access
on business.aicm_workflow_run
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_workflow_step_access on business.aicm_workflow_step;
create policy aicm_workflow_step_access
on business.aicm_workflow_step
for all
using (
  exists (
    select 1
    from business.aicm_workflow_run r
    where r.workflow_run_id = aicm_workflow_step.workflow_run_id
      and business.aicm_can_access_company(r.company_id)
  )
)
with check (
  exists (
    select 1
    from business.aicm_workflow_run r
    where r.workflow_run_id = aicm_workflow_step.workflow_run_id
      and business.aicm_has_company_role(r.company_id, array['Owner','Admin','Manager','Leader'])
  )
);

-- End of candidate.
