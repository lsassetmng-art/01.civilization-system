# AICompanyManager Phase QO-QR API/JWT grant repair smoke report

## Result
- RESULT: PASS

## Phase
- QO-QR

## Previous failure
QJ-QM failed because authenticated role did not have permission for schema business.

## Grant result
- GRANT_CODE: 0
- VERIFY_SCHEMA_USAGE: true
- VERIFY_TABLE_SELECT_COUNT: 7
- VERIFY_HELPER_EXECUTE_COUNT: 8

## Smoke result
- SMOKE_CODE: 0
- VERIFY_RESULT: PASS_STRUCTURE
- AUTHORIZED_COMPANY_VISIBLE_COUNT: 1
- AUTHORIZED_DEPARTMENT_VISIBLE_COUNT: 1
- AUTHORIZED_ORGANIZATION_VISIBLE_COUNT: 1
- CROSS_COMPANY_VISIBLE_COUNT: 0
- MISSING_CLAIMS_COMPANY_VISIBLE_COUNT: 0

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15000_PHASE_QO_QR_API_JWT_GRANT_REPAIR_SMOKE_ROADMAP.md
- SCOPE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15010_API_JWT_GRANT_REPAIR_SCOPE.md
- GRANT_SQL: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_145533_phase_qo_qr_api_jwt_grant_repair_smoke/020_api_jwt_grant_repair.sql
- GRANT_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_145533_phase_qo_qr_api_jwt_grant_repair_smoke/030_api_jwt_grant_repair_psql.log
- SMOKE_SQL: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_145533_phase_qo_qr_api_jwt_grant_repair_smoke/040_api_jwt_claim_integration_smoke_retry.sql
- SMOKE_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_145533_phase_qo_qr_api_jwt_grant_repair_smoke/050_api_jwt_claim_integration_smoke_retry.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_qo_qr_api_jwt_grant_repair_smoke_check.sh
- REPORT: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15090_PHASE_QO_QR_API_JWT_GRANT_REPAIR_SMOKE_REPORT.md

## Execution flags
- DB DDL: EXECUTED GRANT ONLY
- DB DATA WRITE: NOT EXECUTED
- psql: EXECUTED
- RLS APPLY: NOT EXECUTED
- POLICY CHANGE: NOT EXECUTED
- curl: NOT EXECUTED
- API CALL: NOT EXECUTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES
