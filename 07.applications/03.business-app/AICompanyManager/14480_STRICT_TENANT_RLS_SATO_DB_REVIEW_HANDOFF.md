# AICompanyManager strict tenant RLS Sato DB review handoff

## Reviewer
佐藤（DB担当）

## Review target
AICompanyManager strict tenant RLS exact design.

## Files to review
- 14410_STRICT_TENANT_RLS_SCOPE_AND_BOUNDARY.md
- 14420_STRICT_TENANT_RLS_JWT_CLAIMS_EXACT.md
- 14430_STRICT_TENANT_RLS_ROLE_AND_ACCESS_MATRIX.md
- 14440_STRICT_TENANT_RLS_POLICY_EXACT_PLAN.md
- 14450_STRICT_TENANT_RLS_NONDESTRUCTIVE_APPLY_AND_ROLLBACK_PLAN.md
- 14460_STRICT_TENANT_RLS_VERIFY_QUERY_CANON.md

## Review checklist
- JWT claim names are stable.
- claim types are compatible with Supabase/PostgreSQL RLS.
- department_ids and organization_ids array handling is feasible.
- role checks are clear.
- service_role policy is preserved.
- smoke-safe to strict transition is non-destructive.
- no DROP POLICY in first strict apply.
- no FORCE RLS in first strict apply.
- rollback plan is acceptable.
- verification plan is sufficient.

## DB execution status
- DB WRITE: NOT EXECUTED
- DB DDL: NOT EXECUTED
- psql: NOT EXECUTED
- RLS APPLY: NOT EXECUTED

## Required approval before future DB phase
- Sato DB review PASS
- Boss explicit approval:
  strict tenant RLS apply OK
