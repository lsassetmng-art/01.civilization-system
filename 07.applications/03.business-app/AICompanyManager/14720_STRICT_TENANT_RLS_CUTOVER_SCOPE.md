# AICompanyManager strict tenant RLS cutover scope

## Target tables
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
- business.aicm_review_action
- business.aicm_workflow_run

## Drop target
- aicm_authenticated_all_smoke_safe

## Preserve
- aicm_service_role_all
- all aicm_*_strict policies
- helper functions
- RLS enabled state

## Future rollback
If app access fails after cutover, recreate smoke-safe authenticated policy using rollback SQL.
Rollback requires explicit Boss approval:
strict tenant RLS cutover rollback OK
