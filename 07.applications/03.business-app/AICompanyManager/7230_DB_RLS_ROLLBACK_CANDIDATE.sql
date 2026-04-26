-- ============================================================
-- AICompanyManager DB/RLS Rollback Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- target_db: Persona-side DB
-- schema: business
-- required_env_when_apply: PERSONA_DATABASE_URL
-- ============================================================

drop policy if exists aicm_workflow_step_access on business.aicm_workflow_step;
drop policy if exists aicm_workflow_run_access on business.aicm_workflow_run;
drop policy if exists aicm_review_action_access on business.aicm_review_action;
drop policy if exists aicm_review_item_access on business.aicm_review_item;
drop policy if exists aicm_csv_row_access on business.aicm_task_ledger_csv_import_row;
drop policy if exists aicm_csv_batch_access on business.aicm_task_ledger_csv_import_batch;
drop policy if exists aicm_task_file_metadata_access on business.aicm_task_file_metadata;
drop policy if exists aicm_task_ledger_manage on business.aicm_department_task_ledger;
drop policy if exists aicm_task_ledger_select on business.aicm_department_task_ledger;
drop policy if exists aicm_robot_assignment_access on business.aicm_organization_robot_assignment;
drop policy if exists aicm_company_common_rule_file_access on business.aicm_company_common_rule_file;
drop policy if exists aicm_organization_manage_manager on business.aicm_organization;
drop policy if exists aicm_organization_select on business.aicm_organization;
drop policy if exists aicm_department_manage_manager on business.aicm_department;
drop policy if exists aicm_department_select on business.aicm_department;
drop policy if exists aicm_membership_manage_admin on business.aicm_actor_membership;
drop policy if exists aicm_membership_select on business.aicm_actor_membership;
drop policy if exists aicm_company_update_admin on business.aicm_company;
drop policy if exists aicm_company_insert_owner_admin on business.aicm_company;
drop policy if exists aicm_company_select on business.aicm_company;

drop table if exists business.aicm_workflow_step cascade;
drop table if exists business.aicm_workflow_run cascade;
drop table if exists business.aicm_review_action cascade;
drop table if exists business.aicm_review_item cascade;
drop table if exists business.aicm_task_ledger_csv_import_row cascade;
drop table if exists business.aicm_task_ledger_csv_import_batch cascade;
drop table if exists business.aicm_task_file_metadata cascade;
drop table if exists business.aicm_department_task_ledger cascade;
drop table if exists business.aicm_organization_robot_assignment cascade;
drop table if exists business.aicm_organization cascade;
drop table if exists business.aicm_department cascade;
drop table if exists business.aicm_company_common_rule_file cascade;
drop table if exists business.aicm_actor_membership cascade;
drop table if exists business.aicm_company cascade;

drop function if exists business.aicm_has_company_role(uuid, text[]);
drop function if exists business.aicm_can_access_company(uuid);
drop function if exists business.aicm_current_user_id();

-- End of rollback candidate.
