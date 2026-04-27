# AICompanyManager Phase MV-MY workflow start persistent smoke roadmap

## Phase
- MV-MY

## Current position
- company persistent write: completed
- department persistent write: completed
- organization persistent write: completed
- ledger persistent write: completed
- review_item + review_action persistent write: completed
- CSV import persistent smoke: completed by MN-MQ
- workflow start: this phase

## Boss approval
Boss explicitly said:

workflow start OK

## Scope
- Create exactly one workflow start smoke row if a workflow table exists.
- Use Persona-side DB.
- Use PERSONA_DATABASE_URL.

## Out of scope
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
