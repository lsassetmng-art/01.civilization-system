# AICompanyManager Phase SS-SV post-release UI login smoke report

## Result
- RESULT: PASS

## Phase
- SS-SV

## UI
- UI_URL: http://127.0.0.1:8792/aicm/ui/post-release-login-smoke
- UI_HTTP_CODE: 200
- UI_CURL_CODE: 0

## API
- API_URL: http://127.0.0.1:8792/aicm/v1/ui-login-smoke/session

## HTTP result
- MANAGER_HTTP_CODE: 200
- MANAGER_CURL_CODE: 0
- WORKER_HTTP_CODE: 200
- WORKER_CURL_CODE: 0
- REVIEWER_HTTP_CODE: 200
- REVIEWER_CURL_CODE: 0
- CROSS_HTTP_CODE: 200
- CROSS_CURL_CODE: 0
- MISSING_HTTP_CODE: 200
- MISSING_CURL_CODE: 0

## Verified cases
- UI page load
- Manager login claim
- Worker login claim
- Reviewer login claim
- cross-company deny
- missing claims deny

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15800_PHASE_SS_SV_POST_RELEASE_UI_LOGIN_SMOKE_ROADMAP.md
- SCOPE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15810_POST_RELEASE_UI_LOGIN_SMOKE_SCOPE.md
- SERVER_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/post-release-ui-login-smoke-server.mjs
- SERVER_LOG: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/server/post_release_ui_login_smoke_server.log
- PREFLIGHT_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/000_post_release_ui_login_smoke_preflight.log
- UI_HTML: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/010_ui_login_smoke_page.html
- MANAGER_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/020_manager_login_response.json
- WORKER_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/030_worker_login_response.json
- REVIEWER_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/040_reviewer_login_response.json
- CROSS_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/050_cross_company_login_response.json
- MISSING_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/060_missing_claims_login_response.json
- CURL_META: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/070_post_release_ui_login_smoke_curl_meta.log
- CURL_STDERR: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_150953_phase_ss_sv_post_release_ui_login_smoke/071_post_release_ui_login_smoke_curl_stderr.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_ss_sv_post_release_ui_login_smoke_check.sh
- REPORT: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/15890_PHASE_SS_SV_POST_RELEASE_UI_LOGIN_SMOKE_REPORT.md

## Execution flags
- LOCALHOST UI: EXECUTED
- REAL HTTP API: EXECUTED LOCALHOST
- BACKEND PSQL: EXECUTED READ ONLY
- DB DDL: NOT EXECUTED
- DB DATA WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- POLICY CHANGE: NOT EXECUTED
- TOKEN VALUE: NOT PRINTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES
