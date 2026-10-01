# AICompanyManager ledger constraint-guided repair canon

## Boss approval
Boss already said:

ledger persistent write OK

## Target
- LEDGER_TABLE: business.aicm_department_task_ledger
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3

## Safety
- Same LEDGER_ID is reused.
- Existing row check runs before insert.
- CHECK and enum allowed values are read from DB metadata.
- This phase does not execute API, RLS, review action, CSV import, workflow start, live AIWorkerOS, or git push.
