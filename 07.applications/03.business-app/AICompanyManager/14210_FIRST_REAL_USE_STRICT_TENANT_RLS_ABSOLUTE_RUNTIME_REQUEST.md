# AICompanyManager first real use absolute runtime request

## Requested work
Prepare strict tenant RLS exact design for AICompanyManager.

## Required output topics
- JWT claim structure
- company_id claim
- department_id and organization_id scope
- Manager / Leader / Worker / Reviewer role mapping
- service_role behavior
- authenticated policy behavior
- read/write separation
- review/action/workflow access rules
- migration from smoke-safe RLS
- rollback strategy
- verification queries
- non-destructive apply plan

## Forbidden actions
- Do not apply RLS.
- Do not change schema.
- Do not write to DB.
- Do not delete policies.
