# AIWorkerOS Helpdesk Read-only API Patch Design NOT_EXECUTED R2

## 1. Current status

PATCH=NO
API_POST=NO
DB_WRITE=NO
DDL_APPLY=NO
DML_APPLY=NO
GIT_PUSH=NO

This document defines the next code patch but does not apply it.

## 2. Input inventory

INVENTORY_RUN_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2

## 3. Selected patch target

Primary route target:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

DB pattern source:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

Response pattern source:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

## 4. Implementation approach

Patch should be minimal and contained.

Preferred approach:

1. Inspect selected route target immediately before patching.
2. Back up selected route target.
3. Add a small route detection block for paths beginning with /api/v1/helpdesk.
4. Route only GET methods.
5. Return 405 or stable blocked response for non-GET methods in Helpdesk Phase1.
6. Use existing DB pool/query pattern when present.
7. Use existing JSON response pattern when present.
8. Add parameterized SELECT queries for Phase1 endpoints.
9. Clamp limit and offset.
10. Do not add POST/ticket/evidence routes.
11. Do not change runtime execution routes.
12. Do not change queue/artifact/deliverable behavior.

## 5. Required helper behavior

If existing helpers are present, reuse them.

If missing, patch may add only small local helpers inside the selected route file:

- sendJson(res, statusCode, payload)
- parseLimitOffset(searchParams)
- normalizeLocale(searchParams)
- buildLikeParam(q)

Do not create a new cross-app bridge/helper file unless required by existing structure.

## 6. Endpoints to implement

See:

- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_190424_aiworker_helpdesk_api_patch_design_not_executed_r2/061_readonly_endpoints_r2.tsv
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_190424_aiworker_helpdesk_api_patch_design_not_executed_r2/030_AIW_HELPDESK_API_ROUTE_DESIGN_R2.md

## 7. SQL tables/views used

Allowed read sources:

- aiworker.v_helpdesk_active_supported_app
- aiworker.v_helpdesk_active_qa
- aiworker.v_helpdesk_active_error_pattern
- aiworker.helpdesk_screen_knowledge
- aiworker.helpdesk_operation_flow
- aiworker.helpdesk_escalation_rule
- aiworker.helpdesk_answer_template

Not allowed in Phase1:

- insert into helpdesk_*
- update helpdesk_*
- delete from helpdesk_*
- ticket write routes
- evidence upload
- response log write
- guardrail decision write
- CX22073JW execution route

## 8. Verification after patch

Required after code patch:

1. syntax check on patched files
2. start server if not running
3. GET /api/v1/helpdesk/apps
4. GET /api/v1/helpdesk/apps/aiworker_os/profile
5. GET /api/v1/helpdesk/apps/aiworker_os/qa
6. GET /api/v1/helpdesk/apps/aiworker_os/errors
7. GET /api/v1/helpdesk/apps/civilization_portal_site/screens
8. GET /api/v1/helpdesk/apps/civilization_portal_site/flows
9. GET /api/v1/helpdesk/apps/aiworker_os/escalation-rules
10. GET /api/v1/helpdesk/templates
11. non-GET Helpdesk method returns blocked or 405
12. secret scan
13. report

## 9. Rollback rule

Before patch:

- backup target files into run dir
- write rollback list
- if patch fails, restore original files immediately

## 10. Next step

Next step is code patch apply only after user explicitly approves.

Recommended user command:

- API patch GO
