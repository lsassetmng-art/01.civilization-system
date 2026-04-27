# AICompanyManager strict tenant RLS final boundary and operations

## Final boundary
AICompanyManager is now in strict tenant RLS post-cutover state.

## Access principle
Authenticated access is expected to be constrained by:
- company_id claim
- department_ids claim
- organization_ids claim
- aicm_roles claim
- is_company_admin claim

## Preserved server path
service_role policy remains present for backend/server flows.

## Operational expectations
APIs and clients must send valid Supabase/JWT claims that match strict RLS helpers.

## Do not assume
- Broad authenticated access no longer exists.
- Smoke-safe policy is no longer available.
- Cross-company read/write should not pass.
- Missing claims may result in zero visible rows or rejected writes.

## Future work
- API token/claim integration test
- UI logged-in user claim test
- role-specific acceptance smoke
- cross-company deny smoke
- audit-log review
