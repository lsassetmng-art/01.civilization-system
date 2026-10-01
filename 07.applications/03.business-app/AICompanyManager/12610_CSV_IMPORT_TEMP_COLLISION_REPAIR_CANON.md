# AICompanyManager CSV import temp collision repair canon

## Target
- LEDGER_TABLE: business.aicm_department_task_ledger
- CSV_LEDGER_ID: 00000000-0000-4000-8000-c5a1b0000001

## Repair
- Avoid reused temp table names.
- Use timestamp-based temp table names.
- ON CONFLICT (ledger_row_id) DO NOTHING prevents duplicate rows.

## Constraint-fixed values
- work_type: 設計
- task_status: 未着手
- priority: 中
- responsible_role: Manager
- source_type: csv
