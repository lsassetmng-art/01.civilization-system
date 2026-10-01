# AICompanyManager Phase ND-NG live AIWorkerOS call smoke roadmap

## Phase
- ND-NG

## Current position
- company persistent write: completed
- department persistent write: completed
- organization persistent write: completed
- ledger persistent write: completed
- review_item + review_action persistent write: completed
- CSV import persistent smoke: completed
- workflow start persistent smoke: completed
- live AIWorkerOS call: this phase

## Boss approval
Boss explicitly said:

live AIWorkerOS OK

## Scope
- Execute one live AIWorkerOS curl call only.
- No DB write.
- No psql.
- No RLS apply.
- No git push.

## Required env
- AIWORKEROS_BASE_URL

## Optional env
- AIWORKEROS_CALL_PATH
  - default: /aicm/v1/live-smoke
- AIWORKEROS_AUTH_HEADER
  - example: Authorization: Bearer xxxxx
