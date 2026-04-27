# AICompanyManager final production rollback runbook

## Rollback principle
Rollback is not automatic.

## Required approval
Before rollback, Boss must explicitly approve:

strict tenant RLS cutover rollback OK

## Primary rollback target
Recreate:
- aicm_authenticated_all_smoke_safe

## Rollback reason examples
- production users cannot access required tenant rows due to claim mapping failure
- emergency support access needed during claim outage
- real API/JWT integration breaks critical workflow

## Rollback prohibitions without emergency approval
- DISABLE ROW LEVEL SECURITY
- DROP strict policies
- DROP service_role policies
- recreate tables
- delete data
- rewrite production data

## After rollback
- mark rollback as temporary
- repair JWT claim mapping
- re-run API/JWT backend integration smoke
- re-run role-specific acceptance smoke
- perform strict tenant RLS cutover again after Boss approval
