# AICompanyManager Phase KR-KU no extra row gate

## Insert target
- LEDGER_TABLE: business.aicm_department_task_ledger
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3

## Idempotent behavior
- If LEDGER_ID already exists, no additional row is inserted.
- If LEDGER_ID does not exist, one row is inserted.

## Not executed
- RLS APPLY
- REVIEW ACTION
- CSV IMPORT
- WORKFLOW START
- LIVE AIWORKEROS CALL
- API WRITE
- BROWSER FETCH WRITE
- GIT PUSH
