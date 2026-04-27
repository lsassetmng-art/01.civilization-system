# AICompanyManager strict tenant RLS scope and boundary

## Design goal
Replace the current smoke-safe RLS posture with a later strict tenant-scoped RLS posture.

## Current state
Current RLS is smoke-safe:
- RLS is enabled.
- broad service/authenticated policies exist.
- It is acceptable for smoke, but not final tenant isolation.

## Target strict state
Strict RLS must ensure that authenticated users can access only rows belonging to permitted company, department, organization, and role scope.

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

## Strict RLS principle
- service_role can perform system/server operations.
- authenticated users are scoped by JWT claims and/or membership mapping.
- no cross-company read/write.
- department and organization scope is enforced for department/organization-bound rows.
- role determines whether user can insert/update/approve/start workflow.

## Out of scope for this design package
- actual RLS apply
- DROP POLICY
- FORCE ROW LEVEL SECURITY
- table recreation
- schema migration execution
- DB data rewrite
- API implementation
- UI implementation

## Future apply condition
Apply only after Sato DB review and Boss explicit approval:
strict tenant RLS apply OK
