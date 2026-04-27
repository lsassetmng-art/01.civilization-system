# AICompanyManager RLS apply scope canon

## Target schema
- business

## Target tables
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
- business.aicm_review_action
- business.aicm_workflow_run

## Apply method
- ALTER TABLE ... ENABLE ROW LEVEL SECURITY
- CREATE POLICY only when policy does not already exist

## Policy naming
- aicm_service_role_all
- aicm_authenticated_all_smoke_safe

## Important
This is an initial smoke-safe RLS application.
It proves RLS is enabled without blocking current app/API smoke.
Strict company/department tenant isolation should be designed and applied as a later dedicated phase.
