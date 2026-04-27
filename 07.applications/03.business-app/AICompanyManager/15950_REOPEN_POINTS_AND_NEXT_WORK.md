# AICompanyManager reopen points and next work

## Release closeout state
This release chain is complete.

## Reopen only for
- production bug fix
- UI/login issue
- strict RLS claim issue
- API/JWT mapping issue
- service_role backend issue
- monitoring/support issue
- rollback request
- new feature development

## Recommended next work after closeout
1. Production monitoring review.
2. Real user journey smoke.
3. UI polish and support messaging.
4. Audit log UX enhancement.
5. Worker assignment UX deepening.
6. Department task ledger CSV UX polish.
7. Release notes for users/admins.
8. AICompanyManager vNext planning.

## Do not rerun without reason
- persistent write smoke
- RLS cutover
- production release marker
- token rotation
- first real use call
- smoke-safe rollback

## Required approval for risky operations
- DB persistent writes require explicit Boss OK.
- RLS rollback requires explicit Boss OK.
- Schema changes require Sato DB review and Boss OK.
