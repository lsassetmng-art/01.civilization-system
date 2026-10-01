# AICompanyManager Phase MD-MG CSV import UUID repair retry roadmap

## Phase
- MD-MG

## Previous phase
- LZ-MC CSV import persistent smoke: FAIL

## Cause
The previous CSV_LEDGER_ID was not a valid PostgreSQL UUID.

## Invalid previous ID
- 00000000-0000-4000-8000-c5v1mp000001

## Fixed ID
- 00000000-0000-4000-8000-c5a1b0000001

## Boss approval
Boss already said:

CSV import OK

## Scope
- Create one local CSV file.
- Import exactly one ledger row from that CSV.
- Use Persona-side DB.
- Use PERSONA_DATABASE_URL.

## Out of scope
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
