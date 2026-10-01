# AICompanyManager Phase KC-KF no-write gate

## Absolute prohibitions in this phase
- Do not execute psql.
- Do not use PERSONA_DATABASE_URL.
- Do not use DATABASE_URL.
- Do not call localhost write API.
- Do not run browser write fetch.
- Do not start backend write server for new write.
- Do not create additional persistent rows.
- Do not apply RLS.
- Do not execute ledger persistent write.
- Do not execute review action.
- Do not execute CSV import.
- Do not execute workflow start.
- Do not execute live AIWorkerOS call.

## Allowed actions
- Read existing local files.
- Grep existing completion reports/logs.
- Create design push documentation.
- Create implementation verification logs.
- git add / commit / push.

## Existing persistent organization row
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Status
- no-write gate: ACTIVE
