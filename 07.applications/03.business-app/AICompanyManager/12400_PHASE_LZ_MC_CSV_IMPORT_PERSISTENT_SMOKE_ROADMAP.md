# AICompanyManager Phase LZ-MC CSV import persistent smoke roadmap

## Phase
- LZ-MC

## Current position
- company persistent write: completed
- department persistent write: completed
- organization persistent write: completed
- ledger persistent write: completed
- review_item + review_action persistent write: completed
- CSV import: this phase

## Boss approval
Boss explicitly said:

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
