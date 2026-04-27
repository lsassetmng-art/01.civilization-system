# AICompanyManager strict tenant RLS policy exact plan

## Policy naming convention

Use explicit strict policy names:

- aicm_company_select_strict
- aicm_company_insert_strict
- aicm_company_update_strict

- aicm_department_select_strict
- aicm_department_insert_strict
- aicm_department_update_strict

- aicm_organization_select_strict
- aicm_organization_insert_strict
- aicm_organization_update_strict

- aicm_ledger_select_strict
- aicm_ledger_insert_strict
- aicm_ledger_update_strict

- aicm_review_item_select_strict
- aicm_review_item_insert_strict
- aicm_review_item_update_strict

- aicm_review_action_select_strict
- aicm_review_action_insert_strict

- aicm_workflow_run_select_strict
- aicm_workflow_run_insert_strict
- aicm_workflow_run_update_strict

## Existing smoke-safe policies
Current smoke-safe policy names:
- aicm_service_role_all
- aicm_authenticated_all_smoke_safe

## Migration strategy
Do not drop smoke-safe policies in the first strict apply step.

Recommended two-stage transition:
1. Add strict policies alongside smoke-safe policies and verify claims.
2. After API/JWT claims pass, disable/remove smoke-safe authenticated policy in a separate Boss-approved phase.

## Service role policy
Keep service_role all-access policy for backend/server flows:
- policy: aicm_service_role_all
- target role: service_role
- using: true
- with check: true

## Authenticated strict policy design

### company condition
company_id = (auth.jwt() ->> 'company_id')::uuid

### department condition
department_id is in json array auth.jwt()->'department_ids'

### organization condition
organization_id is in json array auth.jwt()->'organization_ids'

### role condition
required role exists in auth.jwt()->'aicm_roles'

## Exact condition concept by table

### aicm_company
SELECT:
- company_id equals JWT company_id.

INSERT/UPDATE:
- company_id equals JWT company_id.
- user has Admin role.

### aicm_department
SELECT:
- company_id equals JWT company_id.
- department_id is allowed or user has Admin.

INSERT/UPDATE:
- company_id equals JWT company_id.
- user has Admin or Manager.

### aicm_organization
SELECT:
- company_id equals JWT company_id.
- department_id is allowed.
- organization_id is allowed if claim list is non-empty, or user has Admin.

INSERT/UPDATE:
- company_id equals JWT company_id.
- user has Admin or Manager.

### aicm_department_task_ledger
SELECT:
- company_id equals JWT company_id.
- department_id is allowed.
- user has one of Admin, Manager, Leader, Worker, Reviewer.

INSERT:
- company_id equals JWT company_id.
- department_id is allowed.
- user has Manager or Leader.

UPDATE:
- company_id equals JWT company_id.
- department_id is allowed.
- user has Manager or Leader.
- Worker update exceptions require later column-level/API design.

### aicm_review_item
SELECT:
- company_id equals JWT company_id.
- linked ledger department is allowed or direct department scope exists.
- user has Reviewer, Manager, Leader, or Admin.

INSERT/UPDATE:
- company_id equals JWT company_id.
- user has Manager, Leader, Reviewer, or Admin depending on status operation.

### aicm_review_action
SELECT:
- company_id equals JWT company_id.
- linked review_item is visible.

INSERT:
- company_id equals JWT company_id.
- linked review_item is visible.
- user has Reviewer, Manager, or Admin.

UPDATE:
- not allowed for authenticated users in strict v1.

### aicm_workflow_run
SELECT:
- company_id equals JWT company_id.
- department or ledger scope is allowed.
- user has Admin, Manager, Leader, Worker, or Reviewer.

INSERT:
- company_id equals JWT company_id.
- user has Manager or Leader, or backend service role.

UPDATE:
- company_id equals JWT company_id.
- user has Manager or Leader, or backend service role.
