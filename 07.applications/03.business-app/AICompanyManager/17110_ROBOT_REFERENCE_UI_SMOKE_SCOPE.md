# AICompanyManager robot reference UI smoke scope

## In scope
- Read-only DB verification.
- Generate local smoke HTML.
- Show role / model / personality / public profile / CX reference availability.
- Do not change existing UI source.

## Out of scope
- DB write.
- DB DDL.
- RLS apply.
- API write.
- Persistent UI integration.
- Quantity consumption.

## DB
Use PERSONA_DATABASE_URL.

## UI
Smoke UI is generated under docs/verification only.
It is not the production UI source.
