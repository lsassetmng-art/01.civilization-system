# AICompanyManager Backend API Runtime Preconnect Push Scope Canon

phase: Phase GS-GU
status: backend-api-runtime-preconnect-push-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. 含めるもの

Design:
- GO-GR backend API runtime preconnect docs
- GS-GV push sync docs
- no-connect gates
- meta evidence

Implementation:
- backend-api/aicm/v1/runtime-contract-candidate.js
- backend-api/aicm/v1/supabase-readonly-adapter-candidate.js
- backend-api/aicm/v1/bootstrap-sql-mapping-candidate.js
- GO-GR check test
- GS-GV final verify test
- logs

## 3. push対象外

- unrelated apps
- unrelated OS folders
- DB rollback execution
- real API endpoint connection
- browser fetch execution
- backend DB connection
- live AIWorkerOS call
