# AICompanyManager Organization Persistent Write Scope Canon

phase: Phase JZ
status: organization-persistent-write-scope-canon

## 1. 実行対象

Endpoint:
- POST /api/aicm/v1/organizations/persistent-write-smoke

Primary table:
- business.aicm_organization

Parents:
- business.aicm_company
- company_id: 00000000-0000-4000-8000-1db11893cb24
- business.aicm_department
- department_id: 00000000-0000-4000-8000-f6d6b5b3d38c

Write type:
- persistent insert

## 2. 挿入データ

Purpose:
- persistent write smoke only

Naming:
- AICM Persistent Smoke Organization

## 3. 今回で実行しない対象

Not executed:
- business.aicm_department_task_ledger persistent write
- business.aicm_review_item
- review action
- CSV import
- workflow start
- live AIWorkerOS call
