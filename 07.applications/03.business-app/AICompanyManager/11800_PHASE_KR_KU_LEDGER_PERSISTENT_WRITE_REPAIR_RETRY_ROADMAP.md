# AICompanyManager Phase KR-KU ledger persistent write repair retry roadmap

## Phase
- KR-KU

## Reason
Phase KN-KQ ledger persistent write smoke returned FAIL.

## Confirmed previous state
- ledger persistent write OK: received from Boss
- KN-KQ attempted target table: business.aicm_department_task_ledger
- KN-KQ LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3
- RLS APPLY: NOT EXECUTED
- review action / CSV import / workflow start / live AIWorkerOS: NOT EXECUTED

## Repair strategy
- Do not use psql variables directly inside a DO dollar-quoted block.
- Store parameters in a TEMP TABLE before PL/pgSQL.
- Reuse the same LEDGER_ID.
- If the row already exists, return PASS_EXISTING and do not insert another row.
- If not existing, insert one minimal row using candidate values for constrained columns.

## Scope
- DB persistent write retry for one ledger smoke row only.
- No git push.
- No API.
- No RLS.
