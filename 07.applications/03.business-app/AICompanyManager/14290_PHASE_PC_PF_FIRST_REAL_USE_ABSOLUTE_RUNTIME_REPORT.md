# AICompanyManager Phase PC-PF first real use absolute runtime report

## Result
- RESULT: PASS

## Phase
- PC-PF

## First real use request
- strict tenant RLS exact design for AICompanyManager

## Previous crash fixed
- Previous path problem: /runtime/
- Fixed by absolute runtime paths:
  - AIWORKEROS_IDEMPOTENCY_STORE: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/aiworkeros_runtime/idempotency_store.json
  - AIWORKEROS_REQUEST_LOG: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/aiworkeros_runtime/request_log.jsonl

## Endpoint
- TARGET_URL: http://127.0.0.1:8787/aicm/v1/workflow-start/live-aiworkeros-call
- HTTP_CODE: 202
- CURL_CODE: 0

## Actual Node server
- SERVER_JS: /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/live-aiworkeros-call/src/server.mjs
- SERVER_STARTED_BY_SCRIPT: YES
- SERVER_LOG: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/node_server/actual_node_server_absolute_runtime.log
- PREFLIGHT_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/000_absolute_runtime_preflight.log

## Idempotency
- IDEMPOTENCY_KEY: aicm-first-real-use-strict-rls-absolute-runtime-00000000-0000-4000-8000-f10a00000001-20260427_143100

## Evidence
- ROADMAP: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14200_PHASE_PC_PF_FIRST_REAL_USE_ABSOLUTE_RUNTIME_ROADMAP.md
- USE_CASE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/14210_FIRST_REAL_USE_STRICT_TENANT_RLS_ABSOLUTE_RUNTIME_REQUEST.md
- PAYLOAD_JSON: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/010_first_real_use_absolute_runtime_payload.json
- RESPONSE_BODY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/020_first_real_use_absolute_runtime_response_body.json
- RESPONSE_META: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/030_first_real_use_absolute_runtime_response_meta.log
- CURL_STDERR: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_143100_phase_pc_pf_first_real_use_absolute_runtime/031_first_real_use_absolute_runtime_curl_stderr.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_pc_pf_first_real_use_absolute_runtime_check.sh

## Execution flags
- LIVE AIWORKEROS CALL: EXECUTED
- DB WRITE: NOT EXECUTED
- PERSISTENT DB WRITE: NOT EXECUTED
- psql: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- GIT PUSH: EXECUTED IF SCRIPT COMPLETES
