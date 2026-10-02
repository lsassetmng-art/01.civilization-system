# AIWorkerOS live call endpoint definition handoff

## Status

- AIWorkerOS-side HTTP endpoint contract: defined
- AICompanyManager files: not touched
- DB write: not executed
- psql: not executed
- curl: not executed
- API call: not executed
- RLS apply: not executed

## Canonical endpoint

POST /aicm/v1/workflow-start/live-aiworkeros-call

## Full URL form

{PERSONA_AIWORKEROS_BASE_URL}/aicm/v1/workflow-start/live-aiworkeros-call

## Preferred environment variables

- PERSONA_AIWORKEROS_BASE_URL
- PERSONA_AIWORKEROS_AUTH_TOKEN

## Compatibility aliases

- AIWORKEROS_BASE_URL
- PERSONA_BASE_URL
- PERSONAOS_BASE_URL
- PERSONA_API_BASE_URL

## Files

- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/00_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/00_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/10_LIVE_AIWORKEROS_CALL_ENDPOINT_CONTRACT.md
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/20_REQUEST_RESPONSE_EXACT_PAYLOAD.md
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/30_SECURITY_IDEMPOTENCY_AND_BOUNDARY.md
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/060.integration/AICompanyManager/live-aiworkeros-call/40_IMPLEMENTATION_GATE_AND_NOT_EXECUTED_RULE.md
