# AICompanyManager real API/JWT backend integration gate

## Purpose
Define the next required gate after final strict tenant RLS acceptance.

## Next gate
real API/JWT backend integration smoke

## Why required
The prior JWT claim simulation used psql-level `request.jwt.claims`.
Production usage must verify that the real backend/API path issues or forwards the correct JWT claims.

## Required claims
- company_id
- department_ids
- organization_ids
- aicm_roles
- is_company_admin
- app_user_id

## Required smoke cases

### Authorized Manager
Expected:
- can read current company-scoped rows
- can read assigned department rows
- can read assigned organization rows
- can access allowed ledger/workflow context

### Worker
Expected:
- can read assigned task/workflow context
- cannot perform Manager-only writes

### Reviewer
Expected:
- can read review items/actions in allowed scope
- can create allowed review action only in write rollback smoke

### Cross-company user
Expected:
- cannot read current company rows
- cannot read ledger/workflow rows from another company

### Missing claims
Expected:
- cannot read tenant rows
- writes are rejected

## Execution boundary
The next gate should start with read-only API smoke.
Write tests should use rollback-only flows unless Boss explicitly approves persistent writes.

## Required result
- RESULT: PASS
- JWT_CLAIMS_PRESENT: PASS
- AUTHORIZED_READ: PASS
- CROSS_COMPANY_DENY: PASS
- MISSING_CLAIMS_DENY: PASS
- DB DATA WRITE: NOT EXECUTED for read-only stage
