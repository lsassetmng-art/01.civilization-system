# AICompanyManager ledger fixed constraint insert canon

## Boss approval
Boss already said:

ledger persistent write OK

## Target
- business.aicm_department_task_ledger

## Ledger row
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3

## Parent IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
  - Note: target ledger table has no organization_id column in current schema.

## Constraint-fixed values
- work_type: 設計
- task_status: 未着手
- priority: 中
- responsible_role: Manager
- source_type: manual

## Idempotency
- INSERT uses ON CONFLICT (ledger_row_id) DO NOTHING.
- PASS requires exactly one row with this LEDGER_ID after execution.
