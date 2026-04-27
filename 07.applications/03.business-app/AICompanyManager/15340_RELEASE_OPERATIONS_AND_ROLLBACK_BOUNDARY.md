# AICompanyManager release operations and rollback boundary

## Current operational posture
AICompanyManager is in strict tenant RLS post-cutover state.

## Normal operations
- Backend/server operations should use service_role where appropriate.
- User-facing operations should use authenticated JWT claims.
- Missing claims should be treated as access denied / zero rows.

## Rollback boundary
Rollback must not be automatic.

Rollback requires explicit Boss approval:
strict tenant RLS cutover rollback OK

## Rollback target
Recreate:
- aicm_authenticated_all_smoke_safe

## Rollback purpose
Temporary restoration of broad authenticated smoke-safe access if real API/JWT integration blocks critical access.

## Rollback prohibitions without emergency approval
- DISABLE ROW LEVEL SECURITY
- FORCE ROW LEVEL SECURITY
- DROP strict policies
- DROP service_role policies
- recreate target tables
- delete business data

## Monitoring checklist
- failed API auth events
- permission denied errors
- RLS zero-row surprises
- cross-company deny behavior
- service_role route behavior
- runtime logs for live AIWorkerOS local endpoint
