# AICompanyManager ledger persistent write repair retry canon

## Approved scope
Boss already said:

ledger persistent write OK

## Idempotency
- Same LEDGER_ID is reused:
  00000000-0000-4000-8000-7ed9e0a1c2b3

## Target table
- business.aicm_department_task_ledger

## Safety
- Existing row check comes before insert.
- PASS_EXISTING means no extra row was inserted.
- PASS means exactly one row was inserted in this repair phase.
