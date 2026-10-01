# AICompanyManager Phase KV-KY ledger constraint-guided repair completion report

## Result
- RESULT: FAIL

## Phase
- KV-KY

## Target
- LEDGER_TABLE: business.aicm_department_task_ledger
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3

## IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/11900_PHASE_KV_KY_LEDGER_CONSTRAINT_GUIDED_REPAIR_ROADMAP.md
- CANON: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/11910_LEDGER_CONSTRAINT_GUIDED_REPAIR_CANON.md
- ERROR_SNIPPET: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_123454_phase_kv_ky_ledger_constraint_guided_repair/010_previous_error_snippet.log
- SCHEMA_SNAPSHOT: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_123454_phase_kv_ky_ledger_constraint_guided_repair/020_schema_constraint_compact_snapshot.log
- SQL_FILE: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_123454_phase_kv_ky_ledger_constraint_guided_repair/030_constraint_guided_ledger_insert.sql
- PSQL_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_123454_phase_kv_ky_ledger_constraint_guided_repair/040_constraint_guided_ledger_insert_psql.log
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_123454_phase_kv_ky_ledger_constraint_guided_repair/050_constraint_guided_ledger_verify.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_kv_ky_ledger_constraint_guided_repair_check.sh

## Execution flags
- DB WRITE: EXECUTED OR PASS_EXISTING
- PERSISTENT DB WRITE: EXECUTED OR ALREADY_EXECUTED_PREVIOUSLY
- RLS APPLY: NOT EXECUTED
- API WRITE: NOT EXECUTED
- BROWSER WRITE FETCH: NOT EXECUTED
- BACKEND DB WRITE: NOT EXECUTED
- REVIEW ACTION: NOT EXECUTED
- CSV IMPORT: NOT EXECUTED
- WORKFLOW START: NOT EXECUTED
- LIVE AIWORKEROS CALL: NOT EXECUTED
- GIT PUSH: NOT EXECUTED

## psql exit code
- 3

## Next
If RESULT is PASS, next phase is ledger persistent write result push sync.
