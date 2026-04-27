# AICompanyManager Phase IK-IN Organization Write API Rollback Smoke Generation Report

status: generated
generated_at: 20260427_105728
result: PASS

scope:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/10210_ORGANIZATION_WRITE_API_ROLLBACK_SCOPE_CANON.md

execution:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/10220_ORGANIZATION_WRITE_API_ROLLBACK_EXECUTION_CANON.md

separation:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/10230_ORGANIZATION_WRITE_NEXT_SCOPE_SEPARATION_GATE.md

no_persist:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/10240_ORGANIZATION_WRITE_API_NO_PERSIST_GATE.md

report:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/10290_PHASE_IK_IN_ORGANIZATION_WRITE_API_ROLLBACK_SMOKE_COMPLETION_REPORT.md

server_js:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/organization-write-rollback-smoke-server.js

smoke_marker_js:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-organization-write-rollback-smoke-executed.js

response_json:
- /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_105728_phase_ik_in_organization_write_rollback_smoke/organization_write_rollback_response.json

validation_json:
- /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_105728_phase_ik_in_organization_write_rollback_smoke/organization_write_rollback_validation.json

test:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_ik_in_organization_write_api_rollback_smoke_check.sh

logs:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/logs/20260427_105728_phase_ik_in_organization_write_rollback_smoke/010_organization_write_rollback_server.log
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/logs/20260427_105728_phase_ik_in_organization_write_rollback_smoke/020_organization_write_rollback_post.log
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/logs/20260427_105728_phase_ik_in_organization_write_rollback_smoke/040_phase_ik_in_organization_write_api_rollback_smoke.log

DB WRITE:
- EXECUTED INSIDE ROLLBACK TRANSACTION

PERSISTENT DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

WRITE API CONNECT:
- EXECUTED LOCALHOST ROLLBACK SMOKE

BROWSER WRITE FETCH:
- EXECUTED LOCALHOST POST SMOKE

BACKEND DB WRITE:
- EXECUTED INSIDE ROLLBACK TRANSACTION

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
