# AICompanyManager Phase PX-QA strict tenant RLS shadow verify recovery roadmap

## Phase
- PX-QA

## Previous phase
- PT-PW strict tenant RLS shadow apply

## Previous result interpretation
PT-PW printed RESULT: FAIL, but visible output shows:
- RLS remains enabled on target tables.
- strict tenant RLS shadow apply executed.
- DB DATA WRITE was not executed.
- DROP POLICY was not executed.
- FORCE RLS was not executed.

## Cause of previous FAIL
The verification SQL reused a CTE name across multiple independent SELECT statements.
PostgreSQL CTE scope is one statement only, so later SELECTs failed.

## This phase
- Do not re-apply strict policies.
- Do not execute DB DDL.
- Do not write data.
- Run read-only verification only.
- If verification passes, record PT-PW as recovered PASS and push evidence.

## Out of scope
- RLS re-apply
- helper function re-create
- policy create/drop
- smoke-safe policy cutover
- FORCE RLS
- API call
- curl
