# AICompanyManager CSV import UUID repair retry canon

## Repair target
- LZ-MC CSV import persistent smoke

## Reason
The previous CSV ledger ID contained non-hex characters and could not be cast to uuid.

## Valid UUID used in this retry
- CSV_LEDGER_ID: 00000000-0000-4000-8000-c5a1b0000001

## Target table
- business.aicm_department_task_ledger

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
