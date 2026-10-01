# AICompanyManager Phase QJ-QM API/JWT claim integration smoke report

## Result
- RESULT: FAIL

## Phase
- QJ-QM

## psql
- PSQL_CODE: 3

## Structure result
- VERIFY_RESULT: 

## Claim smoke result
- AUTHORIZED_COMPANY_VISIBLE_COUNT: 
- AUTHORIZED_DEPARTMENT_VISIBLE_COUNT: 
- AUTHORIZED_ORGANIZATION_VISIBLE_COUNT: 
- CROSS_COMPANY_VISIBLE_COUNT: 
- MISSING_CLAIMS_COMPANY_VISIBLE_COUNT: 

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14900_PHASE_QJ_QM_API_JWT_CLAIM_INTEGRATION_SMOKE_ROADMAP.md
- SCOPE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14910_API_JWT_CLAIM_INTEGRATION_SMOKE_SCOPE.md
- SQL_FILE: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_145306_phase_qj_qm_api_jwt_claim_integration_smoke/020_api_jwt_claim_integration_smoke.sql
- PSQL_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_145306_phase_qj_qm_api_jwt_claim_integration_smoke/030_api_jwt_claim_integration_smoke_psql.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_qj_qm_api_jwt_claim_integration_smoke_check.sh
- REPORT: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14990_PHASE_QJ_QM_API_JWT_CLAIM_INTEGRATION_SMOKE_REPORT.md

## Execution flags
- DB DDL: NOT EXECUTED
- DB DATA WRITE: NOT EXECUTED
- psql: EXECUTED READ ONLY CLAIM SIMULATION
- RLS APPLY: NOT EXECUTED
- POLICY CHANGE: NOT EXECUTED
- curl: NOT EXECUTED
- API CALL: NOT EXECUTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES

## Next
If PASS:
- role-specific acceptance smoke

If FAIL:
- inspect psql log for permission, role, claim, or policy issue.
