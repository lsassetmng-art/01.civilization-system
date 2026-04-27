# AICompanyManager API/JWT grant repair scope

## Target role
- authenticated

## Grants
- GRANT USAGE ON SCHEMA business TO authenticated
- GRANT EXECUTE ON AICompanyManager helper functions TO authenticated
- GRANT table privileges matching strict RLS policy intent

## Table grants
- aicm_company: SELECT, INSERT, UPDATE
- aicm_department: SELECT, INSERT, UPDATE
- aicm_organization: SELECT, INSERT, UPDATE
- aicm_department_task_ledger: SELECT, INSERT, UPDATE
- aicm_review_item: SELECT, INSERT, UPDATE
- aicm_review_action: SELECT, INSERT
- aicm_workflow_run: SELECT, INSERT, UPDATE

## Important
GRANT does not bypass RLS.
RLS policies still decide which rows/actions are allowed.

## Not included
- DELETE grant
- DROP policy
- smoke-safe policy restore
- RLS disable
- FORCE RLS
