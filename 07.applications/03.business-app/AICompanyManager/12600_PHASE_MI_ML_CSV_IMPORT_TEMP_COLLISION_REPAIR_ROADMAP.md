# AICompanyManager Phase MI-ML CSV import temp collision repair roadmap

## Phase
- MI-ML

## Previous phase
- MD-MG CSV import UUID repair retry: FAIL

## Cause
Temporary table name collision:
- aicm_csv_import_stage already exists

## Repair
- Use unique temp table names:
  - aicm_csv_stage_20260427130336
  - aicm_csv_result_20260427130336

## Boss approval
Boss already said:

CSV import OK

## Scope
- Import one CSV row into ledger table.
- No workflow start.
- No live AIWorkerOS call.
- No RLS apply.
- No API write.
- No git push.
