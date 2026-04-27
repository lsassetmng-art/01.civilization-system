# AICompanyManager Company Write API Rollback Scope Canon

phase: Phase HV
status: company-write-api-rollback-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/companies/write-rollback-smoke

Table:
- business.aicm_company

Transaction:
- BEGIN
- INSERT smoke row
- ROLLBACK

## 2. 永続化

Persistent write:
- false

## 3. 初回で実行しない対象

Not executed:
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
