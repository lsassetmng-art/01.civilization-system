# AICompanyManager final release go/no-go checklist

## GO items already satisfied

### Backend foundation
- [x] company persistent write
- [x] department persistent write
- [x] organization persistent write
- [x] ledger persistent write
- [x] review item + review action persistent write
- [x] CSV import persistent smoke
- [x] workflow start persistent smoke
- [x] live AIWorkerOS call smoke
- [x] first real use accepted

### Security / RLS
- [x] smoke-safe RLS applied
- [x] strict tenant RLS exact design created
- [x] Sato DB review recorded
- [x] strict tenant RLS shadow apply
- [x] strict tenant RLS cutover
- [x] smoke-safe authenticated policy removed
- [x] service_role preserved
- [x] helper functions verified
- [x] role-specific acceptance verified

### Hygiene
- [x] .env.local removed from latest git tracking
- [x] runtime files removed from latest git tracking
- [x] .gitignore added
- [x] .env.example added
- [x] local token rotation recorded

## NO-GO items still open before production

### Real integration
- [ ] real API/JWT backend integration smoke
- [ ] real UI login smoke
- [ ] real API cross-company deny smoke
- [ ] real API missing-claims deny smoke

### Write path
- [ ] role-specific write rollback smoke under strict RLS
- [ ] review action write rollback under real claims
- [ ] workflow start write rollback under real claims

### Operations
- [ ] rollback drill
- [ ] release notes
- [ ] support / monitoring entry
- [ ] audit log review
- [ ] final Boss production release approval

## Release decision
- Current status: PRE-RELEASE READY
- Production status: HOLD until remaining NO-GO items are cleared.
