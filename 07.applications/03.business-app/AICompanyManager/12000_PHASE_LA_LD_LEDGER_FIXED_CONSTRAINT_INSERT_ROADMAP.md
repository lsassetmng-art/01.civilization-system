# AICompanyManager Phase LA-LD ledger fixed constraint insert roadmap

## Phase
- LA-LD

## Current issue
Previous repair phases failed before INSERT because of PL/pgSQL record alias conflict.

## Confirmed from KZ diagnostic
- LEDGER_TABLE: business.aicm_department_task_ledger
- PK: ledger_row_id
- Required columns:
  - ledger_row_id
  - company_id
  - department_id
  - deliverable_name
  - task_name
  - work_type
  - task_status
  - priority
  - responsible_role
  - source_type
  - handoff_link
  - note
- Optional:
  - due_date
  - responsible_robot_id
  - created_at
  - updated_at

## Fixed constraint values
- work_type: 設計
- task_status: 未着手
- priority: 中
- responsible_role: Manager
- source_type: manual

## Scope
- Insert one ledger smoke row only.
- Use same LEDGER_ID.
- ON CONFLICT DO NOTHING prevents duplicate rows.

## Out of scope
- RLS apply
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- API write
- browser fetch write
- git push
