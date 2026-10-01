# AICompanyManager Phase KV-KY ledger constraint-guided repair roadmap

## Phase
- KV-KY

## Current issue
- KN-KQ failed.
- KR-KU failed.
- KR-KU read-only verify confirmed:
  - LEDGER_TABLE: business.aicm_department_task_ledger
  - PK_COLUMN: ledger_row_id
  - LEDGER_ID_COUNT: 0

## Strategy
- Reuse the same LEDGER_ID.
- Extract allowed CHECK/enum values from DB metadata.
- Insert one row only.
- If the same LEDGER_ID already exists, return PASS_EXISTING.

## Scope
- ledger persistent write repair only

## Out of scope
- RLS apply
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- API write
- browser fetch write
- git push
