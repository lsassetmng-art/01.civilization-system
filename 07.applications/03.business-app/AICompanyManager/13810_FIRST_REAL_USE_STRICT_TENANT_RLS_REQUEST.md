# AICompanyManager first real use request

## Use case
Prepare the strict tenant RLS exact design for AICompanyManager.

## Background
The completed chain applied smoke-safe RLS only.
Strict tenant RLS remains a future dedicated phase.

## Requested output from live AIWorkerOS
Create a work-ready breakdown for strict tenant RLS exact design.

## Required design topics
- JWT claim structure
- company_id claim
- department_id / organization_id scope
- role mapping for Manager / Leader / Worker / Reviewer
- service_role behavior
- authenticated policy behavior
- read/write separation
- review/action/workflow access rules
- migration from smoke-safe policy to strict policy
- rollback strategy
- verification queries
- non-destructive apply plan

## Forbidden actions
- Do not apply RLS.
- Do not change schema.
- Do not delete policies.
- Do not write to DB.
- Do not call external unapproved services.

## Expected result
A planning response or accepted request from AIWorkerOS.
