# AICompanyManager Write API Next Scope Separation Gate

phase: Phase HX
status: write-api-next-scope-separation-gate

## Next write phases

After company rollback smoke PASS, next write scopes should be separated.

1. company persistent write or rollback-repeat
2. department rollback smoke
3. organization rollback smoke
4. ledger rollback smoke
5. review action only after separate Boss OK
6. CSV import only after separate Boss OK
7. workflow start only after separate Boss OK
8. live AIWorkerOS only after separate Boss OK

## Still forbidden now

- review action
- CSV import
- workflow start
- live AIWorkerOS call
