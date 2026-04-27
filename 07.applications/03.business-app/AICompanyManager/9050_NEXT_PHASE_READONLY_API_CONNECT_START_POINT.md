# AICompanyManager Next Phase Readonly API Connect Start Point

phase: Phase GZ
status: next-phase-readonly-api-connect-start-point

## 1. 次Phase名

Next phase after Boss OK:
- Phase HA-HD Readonly API Connect

## 2. 最初に行うこと

1. Boss implementation OK record
2. backend DB readonly env gate
3. real readonly adapter enable candidate
4. GET /api/aicm/v1/bootstrap smoke
5. browser fetch readonly smoke
6. LocalRepository fallback verify

## 3. 使用する候補ファイル

Backend:
- backend-api/aicm/v1/runtime-contract-candidate.js
- backend-api/aicm/v1/supabase-readonly-adapter-candidate.js
- backend-api/aicm/v1/bootstrap-sql-mapping-candidate.js
- backend-api/aicm/v1/bootstrap-readonly-candidate.js

Browser:
- assets/js/aicm-api-readonly-wiring-candidate.js
- assets/js/aicm-api-repository-candidate.js
- assets/js/aicm-repository-mode-resolver-candidate.js

## 4. 実行順序

Readonly API connect order:
1. backend readonly adapter enabled only
2. backend bootstrap response shape check
3. browser fetch GET /api/aicm/v1/bootstrap
4. map response to UI state
5. fallback to LocalRepository if error

## 5. まだ禁止

- write API
- review action
- csv import
- workflow start
- live AIWorkerOS call
