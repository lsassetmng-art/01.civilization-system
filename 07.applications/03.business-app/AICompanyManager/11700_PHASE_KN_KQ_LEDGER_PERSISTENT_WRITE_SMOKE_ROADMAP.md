# AICompanyManager Phase KN-KQ ledger persistent write smoke roadmap

## Phase
- KN-KQ

## Current position
- readonly API connect: completed
- write rollback coverage: completed
- company persistent write: completed and pushed
- department persistent write: completed and pushed
- organization persistent write: completed and pushed by KL-KM safe push
- ledger persistent write: this phase

## Purpose
Insert one minimal persistent smoke row into the AICompanyManager ledger table on Persona-side DB.

## DB
- Persona-side DB
- env: PERSONA_DATABASE_URL
- ERP DATABASE_URL: not used

## Confirmed parents
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Scope
- Discover the ledger table under business schema
- Insert exactly one smoke ledger row
- Validate the inserted row
- Create completion evidence

## Out of scope
- RLS apply
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push

## Reviewer
- 佐藤（DB担当）
