# AICompanyManager Phase OX-PA first real use actual Node server report

## Result
- RESULT: FAIL

## Phase
- OX-PA

## First real use request
- strict tenant RLS exact design for AICompanyManager

## Endpoint
- TARGET_URL: http://127.0.0.1:8787/aicm/v1/workflow-start/live-aiworkeros-call
- HTTP_CODE: 000
- CURL_CODE: 52

## Actual Node server
- SERVER_JS: /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/live-aiworkeros-call/src/server.mjs
- SERVER_STARTED_BY_SCRIPT: YES
- SERVER_LOG: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/node_server/actual_node_server.log
- PREFLIGHT_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/000_actual_node_preflight.log

## Idempotency
- IDEMPOTENCY_KEY: aicm-first-real-use-strict-rls-actual-node-00000000-0000-4000-8000-f10a00000001-20260427_142846

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14100_PHASE_OX_PA_FIRST_REAL_USE_ACTUAL_NODE_SERVER_ROADMAP.md
- USE_CASE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14110_FIRST_REAL_USE_STRICT_TENANT_RLS_ACTUAL_NODE_REQUEST.md
- PAYLOAD_JSON: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/010_first_real_use_actual_node_payload.json
- RESPONSE_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/020_first_real_use_actual_node_response_body.json
- RESPONSE_META: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/030_first_real_use_actual_node_response_meta.log
- CURL_STDERR: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_142846_phase_ox_pa_first_real_use_actual_node_server/031_first_real_use_actual_node_curl_stderr.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_ox_pa_first_real_use_actual_node_server_check.sh

## Execution flags
- LIVE AIWORKEROS CALL: EXECUTED
- DB WRITE: NOT EXECUTED
- PERSISTENT DB WRITE: NOT EXECUTED
- psql: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES
