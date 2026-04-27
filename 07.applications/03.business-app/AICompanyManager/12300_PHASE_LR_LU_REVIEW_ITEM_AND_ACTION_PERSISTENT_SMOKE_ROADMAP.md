# AICompanyManager Phase LR-LU review item + review action persistent smoke roadmap

## Phase
- LR-LU

## Current position
- company persistent write: completed
- department persistent write: completed
- organization persistent write: completed
- ledger persistent write: completed by LA-LD
- review action alone failed because review_item parent did not exist
- review item + review action: this phase

## Boss approval
Boss explicitly said:

review item + review action OK

## Scope
- Create one review_item smoke row.
- Create one review_action smoke row referencing that review_item.
- Use Persona-side DB.
- Use PERSONA_DATABASE_URL.

## Out of scope
- CSV import
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
