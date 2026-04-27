# AICompanyManager Phase NY-OC RLS apply roadmap

## Phase
- NY-OC

## Current position
Completed:
- company persistent write
- department persistent write
- organization persistent write
- ledger persistent write
- review_item + review_action persistent write
- CSV import persistent smoke
- workflow start persistent smoke
- live AIWorkerOS call smoke
- all result push sync through live AIWorkerOS

## Boss approval
Boss explicitly said:

RLS apply OK

## This phase
Apply RLS to AICompanyManager core tables.

## Safety policy
- Additive only.
- Existing policies are not dropped.
- Existing tables are not recreated.
- Target is AICompanyManager tables only.
- This is smoke-safe RLS, not final strict tenant isolation.

## Out of scope
- schema redesign
- table deletion
- policy deletion
- non-AICompanyManager tables
- API call
- curl
- live AIWorkerOS re-execution
- git push
