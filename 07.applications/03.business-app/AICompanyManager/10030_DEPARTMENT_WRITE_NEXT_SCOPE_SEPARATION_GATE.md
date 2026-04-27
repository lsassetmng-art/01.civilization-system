# AICompanyManager Department Write Next Scope Separation Gate

phase: Phase IF
status: department-write-next-scope-separation-gate

## Next write phases

After department rollback smoke PASS, next write scopes should remain separated.

1. organization rollback smoke
2. ledger rollback smoke
3. persistent write decision only after separate Boss OK
4. review action only after separate Boss OK
5. CSV import only after separate Boss OK
6. workflow start only after separate Boss OK
7. live AIWorkerOS only after separate Boss OK

## Still forbidden now

- organization write
- ledger write
- persistent write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
