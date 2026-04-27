# AICompanyManager Company Persistent Write Scope Canon

phase: Phase JJ
status: company-persistent-write-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/companies/persistent-write-smoke

Primary table:
- business.aicm_company

Write type:
- persistent insert

## 2. 挿入データ

Purpose:
- persistent write smoke only

Naming:
- AICM Persistent Smoke Company

## 3. 今回で実行しない対象

Not executed:
- business.aicm_department persistent write
- business.aicm_organization persistent write
- business.aicm_department_task_ledger persistent write
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
