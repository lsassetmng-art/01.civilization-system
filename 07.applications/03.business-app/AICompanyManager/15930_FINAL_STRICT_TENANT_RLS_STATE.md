# AICompanyManager final strict tenant RLS state

## Final state
- strict tenant RLS: ACTIVE
- smoke-safe authenticated policy: REMOVED
- strict policies: PRESENT
- service_role policy: PRESENT
- helper functions: PRESENT
- authenticated grants: REPAIRED
- role-specific acceptance: VERIFIED
- role-specific write rollback: VERIFIED
- real API/JWT backend integration: VERIFIED
- post-release UI login smoke: VERIFIED

## Security behavior verified
- Manager tenant access: verified
- Worker tenant access: verified
- Reviewer tenant access: verified
- cross-company deny: verified
- missing-claims deny: verified
- Worker ledger write denial: verified
- Worker review_action write denial: verified
- Manager/Leader ledger write rollback: verified
- Reviewer review_action write rollback: verified

## Important operational rule
Do not restore broad smoke-safe authenticated access without explicit Boss approval.

Rollback approval phrase:
strict tenant RLS cutover rollback OK

## Do not do casually
- DISABLE RLS
- FORCE RLS
- DROP strict policies
- DROP service_role policies
- expose service_role secret
- commit .env.local
- commit runtime files
