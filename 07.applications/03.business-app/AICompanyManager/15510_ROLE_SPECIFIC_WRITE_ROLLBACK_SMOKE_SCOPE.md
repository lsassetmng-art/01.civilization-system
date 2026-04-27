# AICompanyManager role-specific write rollback smoke scope

## DB
Persona-side DB

## Environment
PERSONA_DATABASE_URL

## Target tenant
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
- REVIEW_ITEM_ID: 00000000-0000-4000-8000-1eac7100aa01

## Write targets
- business.aicm_department_task_ledger
- business.aicm_review_action

## Expected result
- Manager ledger insert: allowed inside transaction and rolled back
- Leader ledger insert: allowed inside transaction and rolled back
- Worker ledger insert: denied by strict RLS
- Reviewer review_action insert: allowed inside transaction and rolled back
- Worker review_action insert: denied by strict RLS

## Safety
All successful writes are followed by ROLLBACK.
Expected denied writes occur in a connection-scoped transaction and are not committed.

## Not executed
- persistent write
- DDL
- RLS apply
- policy change
- delete
