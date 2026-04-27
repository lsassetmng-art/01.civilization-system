# AICompanyManager Department Write API Rollback Scope Canon

phase: Phase IC
status: department-write-api-rollback-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/departments/write-rollback-smoke

Primary table:
- business.aicm_department

Support table:
- business.aicm_company

Transaction:
- BEGIN
- insert smoke company support row if needed
- insert smoke department row
- ROLLBACK

## 2. 永続化

Persistent write:
- false

## 3. 初回で実行しない対象

Not executed:
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
