# AICompanyManager strict tenant RLS security boundary and remaining work

## Final boundary
This package confirms strict tenant RLS acceptance at DB/policy/claim simulation level.

## Confirmed
- broad smoke-safe authenticated policy removed
- strict policies present
- service_role path preserved
- helper functions present
- authenticated grants repaired
- read-only role-specific smoke passed

## Not yet confirmed
- real browser login token content
- real API gateway token mapping
- production auth provider claim issuance
- end-to-end UI access under real user accounts
- audit trail UX
- full write-path acceptance by role

## Remaining recommended work
1. Real API/JWT integration through the app backend.
2. UI login acceptance smoke.
3. role-specific write rollback smoke under strict RLS.
4. cross-company API deny smoke.
5. production release readiness package.
