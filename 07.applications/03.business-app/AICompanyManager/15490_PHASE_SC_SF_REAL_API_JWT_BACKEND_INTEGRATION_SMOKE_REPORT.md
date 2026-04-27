# AICompanyManager Phase SC-SF real API/JWT backend integration smoke report

## Result
- RESULT: PASS

## Phase
- SC-SF

## Endpoint
- API_URL: http://127.0.0.1:8791/aicm/v1/strict-tenant-rls/claim-smoke

## HTTP result
- MANAGER_HTTP_CODE: 200
- MANAGER_CURL_CODE: 0
- CROSS_HTTP_CODE: 200
- CROSS_CURL_CODE: 0
- MISSING_HTTP_CODE: 200
- MISSING_CURL_CODE: 0

## Verified cases
- authorized Manager claim
- cross-company deny
- missing claims deny

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15400_PHASE_SC_SF_REAL_API_JWT_BACKEND_INTEGRATION_SMOKE_ROADMAP.md
- SCOPE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15410_REAL_API_JWT_BACKEND_INTEGRATION_SMOKE_SCOPE.md
- SERVER_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/real-api-jwt-backend-integration-smoke-server.mjs
- SERVER_LOG: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/server/real_api_jwt_backend_server.log
- PREFLIGHT_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/000_real_api_jwt_backend_preflight.log
- MANAGER_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/010_authorized_manager_response.json
- CROSS_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/020_cross_company_response.json
- MISSING_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/030_missing_claims_response.json
- CURL_META: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/040_real_api_jwt_backend_curl_meta.log
- CURL_STDERR: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150256_phase_sc_sf_real_api_jwt_backend_integration_smoke/041_real_api_jwt_backend_curl_stderr.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_sc_sf_real_api_jwt_backend_integration_smoke_check.sh
- REPORT: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15490_PHASE_SC_SF_REAL_API_JWT_BACKEND_INTEGRATION_SMOKE_REPORT.md

## Execution flags
- REAL HTTP API: EXECUTED LOCALHOST
- BACKEND PSQL: EXECUTED READ ONLY
- DB DDL: NOT EXECUTED
- DB DATA WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- POLICY CHANGE: NOT EXECUTED
- curl: EXECUTED LOCALHOST
- API CALL: EXECUTED LOCALHOST
- TOKEN VALUE: NOT PRINTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES
