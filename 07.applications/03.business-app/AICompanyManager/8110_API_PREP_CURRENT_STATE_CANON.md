# AICompanyManager API Prep Current State Canon

phase: Phase FM
status: api-prep-current-state-canon

## 1. 現在の到達点

AICompanyManager は以下まで完了している。

Completed:
- local implementation accepted
- DB/RLS apply completed
- DB/RLS read-only postcheck completed
- ApiRepository candidate exists
- Repository mode resolver candidate exists
- API prep clean acceptance completed
- API prep push sync completed

## 2. Active implementation

Active UI:
- index.html
- phase-de-dh-workflow-final-local-ui.js
- phase-de-dh-workflow-final-local-ui.css

Active repository:
- LocalRepository

Active workflow:
- workflow local stub

## 3. Candidate implementation

Candidate only:
- aicm-api-repository-candidate.js
- aicm-repository-mode-resolver-candidate.js

Candidate status:
- not loaded by index.html
- no fetch
- no real API connect
- no live AIWorkerOS call

## 4. DB状態

DB/RLS:
- applied

Postcheck:
- PASS

Current DB operation:
- no write in this phase
- no RLS apply in this phase
- no psql in this phase

## 5. 次の境界

Next real step:
- API readonly connect

Required before next:
- Boss implementation OK
- API readonly smoke plan acceptance
- rollback to LocalRepository plan
- auth/session check plan

## 6. live AIWorkerOS call

live AIWorkerOS call:
- separate future phase
- not part of readonly API connect
