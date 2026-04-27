# AICompanyManager Backend API Readonly Candidate Push Scope Canon

phase: Phase GK-GM
status: backend-api-readonly-candidate-push-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. 含めるもの

Design:
- GG-GJ backend API readonly candidate docs
- GK-GN push sync docs
- no-connect gates
- meta evidence

Implementation:
- backend-api/aicm/v1/bootstrap-readonly-candidate.js
- assets/js/aicm-api-readonly-wiring-candidate.js
- GG-GJ check test
- GK-GN final verify test
- logs

## 3. push対象外

- unrelated apps
- unrelated OS folders
- DB rollback execution
- real API endpoint connection
- browser fetch execution
- backend DB connection
- live AIWorkerOS call
