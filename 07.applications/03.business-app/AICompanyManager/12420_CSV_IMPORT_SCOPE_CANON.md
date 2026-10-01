# AICompanyManager CSV import scope canon

## Target table
- business.aicm_department_task_ledger

## CSV row count
- 1 row only

## Fixed IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
- CSV_LEDGER_ID: 00000000-0000-4000-8000-c5v1mp000001

## Constraint-fixed values
- work_type: 設計
- task_status: 未着手
- priority: 中
- responsible_role: Manager
- source_type: csv

## Duplicate prevention
- ON CONFLICT (ledger_row_id) DO NOTHING

## Not executed
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
