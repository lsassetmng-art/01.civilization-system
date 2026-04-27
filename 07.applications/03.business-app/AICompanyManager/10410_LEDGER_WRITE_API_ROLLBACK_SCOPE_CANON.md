# AICompanyManager Ledger Write API Rollback Scope Canon

phase: Phase IS
status: ledger-write-api-rollback-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/ledger/write-rollback-smoke

Primary table:
- business.aicm_department_task_ledger

Support tables:
- business.aicm_company
- business.aicm_department

Transaction:
- BEGIN
- insert smoke company support row if needed
- insert smoke department support row if needed
- insert smoke ledger row
- ROLLBACK

## 2. 永続化

Persistent write:
- false

## 3. 今回で実行しない対象

Not executed:
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
