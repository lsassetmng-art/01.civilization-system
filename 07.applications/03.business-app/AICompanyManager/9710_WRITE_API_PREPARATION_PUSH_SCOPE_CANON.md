# AICompanyManager Write API Preparation Push Scope Canon

phase: Phase HQ-HT
status: write-api-preparation-push-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. 含めるもの

Design:
- HM-HP write API preparation docs
- write API scope canon
- write API payload contract canon
- idempotency / rollback / audit canon
- review / CSV / workflow separation gate
- write API Boss OK required gate
- no-write gates
- HQ-HT push docs
- meta evidence

Implementation:
- backend-api/aicm/v1/write-api-adapter-disabled.js
- assets/js/aicm-browser-write-api-disabled.js
- HM-HP check test
- HQ-HT final verify test
- logs

## 3. push対象外

- unrelated apps
- unrelated OS folders
- DB write execution
- write API execution
- review action execution
- CSV import execution
- workflow start execution
- live AIWorkerOS call
