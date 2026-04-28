# AICompanyManager Phase XD-XG company_id canonicalization preview report

## Result
- RESULT: PASS

## Fixed
- Added company_id_input.
- Added company_id_source.
- Added company_id_canonicalization_status.
- Preview now separates local UI company id from DB canonical company_id.
- Save preview blocks when company_id remains local-only.

## Verification
- PREVIEW_MARKER_COUNT: 2
- COMPANY_CANON_COUNT: 2
- COMPANY_INPUT_COUNT: 7
- COMPANY_STATUS_COUNT: 8
- COMPANY_BLOCK_COUNT: 1
- TARGET_STATUS_COUNT: 10
- OLD_MARKER_COUNT: 0
- MAIN_JS_MARKER_COUNT: 0
- PREVIEW_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- POOL_NODE_CHECK_RESULT: PASS
- SERVER_NODE_CHECK_RESULT: PASS

## UI server
- OPEN_URL: http://127.0.0.1:8794/?v=20260428_214139
- HTTP_CODE: 200
- ROBOT_API_CODE: 200
- STRUCTURE_API_CODE: 200
- SERVER_PID: 6152
- SERVER_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_214139_phase_xd_xg_company_id_canonicalization_preview/100_local_ui_api_server.log

## Artifacts
- PREVIEW_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-robot-placement-payload-preview.js
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_214139_phase_xd_xg_company_id_canonicalization_preview/090_company_id_canonicalization_preview_verify.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_xd_xg_company_id_canonicalization_preview_check.sh

## Execution flags
- DB WRITE: NOT EXECUTED
- DB DDL: NOT EXECUTED
- psql: EXECUTED READ ONLY BY LOCAL API
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- MAIN UI JS CHANGE: NOT EXECUTED
- QUANTITY_CONSUMPTION: NOT EXECUTED
