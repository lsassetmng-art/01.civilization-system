# AICompanyManager CSV import no-temp bash-read repair canon

## Target
- LEDGER_TABLE: business.aicm_department_task_ledger
- CSV_LEDGER_ID: 00000000-0000-4000-8000-c5a1b0000001

## Method
- CSV file is generated.
- CSV data row is read by bash.
- Parsed CSV values are inserted into business.aicm_department_task_ledger.
- ON CONFLICT (ledger_row_id) DO NOTHING prevents duplicate rows.

## Constraint-fixed values
- work_type: 設計
- task_status: 未着手
- priority: 中
- responsible_role: Manager
- source_type: csv

## Not executed
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- git push
