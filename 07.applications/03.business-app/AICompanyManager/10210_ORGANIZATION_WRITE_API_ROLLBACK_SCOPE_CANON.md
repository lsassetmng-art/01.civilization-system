# AICompanyManager Organization Write API Rollback Scope Canon

phase: Phase IK
status: organization-write-api-rollback-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/organizations/write-rollback-smoke

Primary table:
- business.aicm_organization

Support tables:
- business.aicm_company
- business.aicm_department

Transaction:
- BEGIN
- insert smoke company support row if needed
- insert smoke department support row if needed
- insert smoke organization row
- ROLLBACK

## 2. 永続化

Persistent write:
- false

## 3. 初回で実行しない対象

Not executed:
- business.aicm_department_task_ledger
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
