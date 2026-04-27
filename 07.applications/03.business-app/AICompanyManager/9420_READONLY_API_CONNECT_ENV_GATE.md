# AICompanyManager Readonly API Connect Environment Gate

phase: Phase HE
status: readonly-api-connect-env-gate

## DB environment

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL

## Readonly rules

Backend DB access:
- read only

SQL transaction:
- BEGIN READ ONLY

Write operations:
- forbidden

RLS apply:
- forbidden

Schema changes:
- forbidden
