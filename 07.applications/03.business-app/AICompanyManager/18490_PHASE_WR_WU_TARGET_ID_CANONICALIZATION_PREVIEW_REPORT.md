# AICompanyManager Phase WR-WU target_id canonicalization preview report

## Result
- RESULT: PASS

## Added
- Read-only structure-map API.
- Target ID canonicalization preview.
- target_id_input / target_id / target_id_source / target_id_canonicalization_status.
- save_blocked preview when local ID cannot be mapped.

## APIs
- ROBOT_API_URL: http://127.0.0.1:8794/api/aicm/business-robot-pool
- ROBOT_API_CODE: 200
- ROBOT_POOL_COUNT: 44
- ROLE_CATALOG_COUNT: 16
- STRUCTURE_API_URL: http://127.0.0.1:8794/api/aicm/structure-map
- STRUCTURE_API_CODE: 200
- COMPANY_COUNT: 1
- DEPARTMENT_COUNT: 1
- ORGANIZATION_COUNT: 1

## UI server
- OPEN_URL: http://127.0.0.1:8794/?v=20260428_204043
- HTTP_CODE: 200
- SERVER_PID: 3756
- SERVER_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_204043_phase_wr_wu_target_id_canonicalization_preview/110_local_ui_api_server.log

## Verification
- SERVER_STRUCTURE_COUNT: 3
- SERVER_COMPANY_TABLE_COUNT: 2
- SERVER_DEPT_TABLE_COUNT: 2
- SERVER_ORG_TABLE_COUNT: 2
- PREVIEW_INCLUDE_COUNT: 1
- PREVIEW_MARKER_COUNT: 2
- CANON_FIELD_COUNT: 9
- SAVE_BLOCKED_COUNT: 11
- TARGET_INPUT_COUNT: 8
- TARGET_SOURCE_COUNT: 8
- MAIN_JS_MARKER_COUNT: 0
- SERVER_NODE_CHECK_RESULT: PASS
- PREVIEW_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- POOL_NODE_CHECK_RESULT: PASS

## Artifacts
- INDEX_FILE: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/index.html
- PREVIEW_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-robot-placement-payload-preview.js
- POOL_WIRE_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-businessos-db-robot-pool-wire.js
- SERVER_JS: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/server/aicm-local-ui-api-server.mjs
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_204043_phase_wr_wu_target_id_canonicalization_preview/100_target_id_canonicalization_preview_verify.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_wr_wu_target_id_canonicalization_preview_check.sh
- ROBOT_API_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_204043_phase_wr_wu_target_id_canonicalization_preview/090_businessos_robot_pool_api_body.json
- STRUCTURE_API_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_204043_phase_wr_wu_target_id_canonicalization_preview/092_aicm_structure_map_api_body.json

## Execution flags
- DB WRITE: NOT EXECUTED
- DB DDL: NOT EXECUTED
- psql: EXECUTED READ ONLY BY LOCAL API
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- MAIN UI JS CHANGE: NOT EXECUTED
- QUANTITY_CONSUMPTION: NOT EXECUTED
