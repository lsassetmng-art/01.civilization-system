-- ============================================================
-- AICompanyManager 05 RLS Policies Refined Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- ============================================================

alter table business.aicm_company enable row level security;
alter table business.aicm_actor_membership enable row level security;
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
create policy aicm_company_select on business.aicm_company
for select using (business.aicm_can_access_company(company_id));

drop policy if exists aicm_company_update_admin on business.aicm_company;
create policy aicm_company_update_admin on business.aicm_company
for update
using (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_membership_select on business.aicm_actor_membership;
create policy aicm_membership_select on business.aicm_actor_membership
for select using (
  actor_user_id = auth.uid()
  or business.aicm_has_company_role(company_id, array['Owner','Admin','Manager'])
);

drop policy if exists aicm_membership_manage_admin on business.aicm_actor_membership;
create policy aicm_membership_manage_admin on business.aicm_actor_membership
for all
using (business.aicm_has_company_role(company_id, array['Owner','Admin']))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin']));

drop policy if exists aicm_department_access on business.aicm_department;
create policy aicm_department_access on business.aicm_department
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_organization_access on business.aicm_organization;
create policy aicm_organization_access on business.aicm_organization
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager']));

drop policy if exists aicm_robot_assignment_access on business.aicm_organization_robot_assignment;
create policy aicm_robot_assignment_access on business.aicm_organization_robot_assignment
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_task_ledger_access on business.aicm_department_task_ledger;
create policy aicm_task_ledger_access on business.aicm_department_task_ledger
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Worker']));

drop policy if exists aicm_task_file_metadata_access on business.aicm_task_file_metadata;
create policy aicm_task_file_metadata_access on business.aicm_task_file_metadata
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Worker']));

drop policy if exists aicm_csv_batch_access on business.aicm_task_ledger_csv_import_batch;
create policy aicm_csv_batch_access on business.aicm_task_ledger_csv_import_batch
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_csv_row_access on business.aicm_task_ledger_csv_import_row;
create policy aicm_csv_row_access on business.aicm_task_ledger_csv_import_row
for all
using (
  exists (
    select 1 from business.aicm_task_ledger_csv_import_batch b
    where b.csv_import_batch_id = aicm_task_ledger_csv_import_row.csv_import_batch_id
      and business.aicm_can_access_company(b.company_id)
  )
)
with check (
  exists (
    select 1 from business.aicm_task_ledger_csv_import_batch b
    where b.csv_import_batch_id = aicm_task_ledger_csv_import_row.csv_import_batch_id
      and business.aicm_has_company_role(b.company_id, array['Owner','Admin','Manager','Leader'])
  )
);

drop policy if exists aicm_review_item_access on business.aicm_review_item;
create policy aicm_review_item_access on business.aicm_review_item
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Reviewer']));

drop policy if exists aicm_review_action_access on business.aicm_review_action;
create policy aicm_review_action_access on business.aicm_review_action
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader','Reviewer']));

drop policy if exists aicm_workflow_run_access on business.aicm_workflow_run;
create policy aicm_workflow_run_access on business.aicm_workflow_run
for all
using (business.aicm_can_access_company(company_id))
with check (business.aicm_has_company_role(company_id, array['Owner','Admin','Manager','Leader']));

drop policy if exists aicm_workflow_step_access on business.aicm_workflow_step;
create policy aicm_workflow_step_access on business.aicm_workflow_step
for all
using (
  exists (
    select 1 from business.aicm_workflow_run r
    where r.workflow_run_id = aicm_workflow_step.workflow_run_id
      and business.aicm_can_access_company(r.company_id)
  )
)
with check (
  exists (
    select 1 from business.aicm_workflow_run r
    where r.workflow_run_id = aicm_workflow_step.workflow_run_id
      and business.aicm_has_company_role(r.company_id, array['Owner','Admin','Manager','Leader'])
  )
);
