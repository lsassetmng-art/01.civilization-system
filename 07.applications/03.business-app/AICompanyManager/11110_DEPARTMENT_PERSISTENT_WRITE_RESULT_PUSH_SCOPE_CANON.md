# AICompanyManager Department Persistent Write Result Push Scope Canon

phase: Phase JU-JX
status: department-persistent-write-result-push-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. 固定する永続書き込み結果

company_id:
- 00000000-0000-4000-8000-1db11893cb24

department_id:
- 00000000-0000-4000-8000-f6d6b5b3d38c

target:
- business.aicm_department

parent:
- business.aicm_company

## 3. 含めるもの

Design:
- JQ-JT department persistent write smoke docs
- JQ-JT parent company quote repair docs
- JQ-JT completion report
- JU-JX push docs
- meta evidence

Implementation:
- backend-api/aicm/v1/department-persistent-write-smoke-server.js
- assets/js/aicm-department-persistent-write-smoke-executed.js
- JQ-JT repaired check test
- JU-JX final verify test
- logs

## 4. push対象外

- unrelated apps
- unrelated OS folders
- temporary response JSON under HOME/.tmp
- additional DB write execution
- organization persistent write execution
- ledger persistent write execution
- review action execution
- CSV import execution
- workflow start execution
- live AIWorkerOS call
