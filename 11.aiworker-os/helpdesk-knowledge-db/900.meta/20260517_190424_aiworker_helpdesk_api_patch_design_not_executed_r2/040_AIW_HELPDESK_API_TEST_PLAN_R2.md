# AIWorkerOS Helpdesk Read-only API Test Plan R2

## 1. Syntax checks

Run:

- node --check target file
- package script check if available

## 2. Server startup

If server is not running:

- start existing AIWorkerOS runtime server using the existing documented command
- record PID and port
- do not start duplicate server on occupied port

## 3. HTTP checks

Required GET checks:

- /api/v1/helpdesk/apps
- /api/v1/helpdesk/apps/aiworker_os/profile
- /api/v1/helpdesk/apps/aiworker_os/qa
- /api/v1/helpdesk/apps/aiworker_os/errors
- /api/v1/helpdesk/apps/civilization_portal_site/screens
- /api/v1/helpdesk/apps/civilization_portal_site/flows
- /api/v1/helpdesk/apps/aiworker_os/escalation-rules
- /api/v1/helpdesk/templates

Expected:

- HTTP 200 for valid read-only routes
- JSON ok=true
- data is array or object as appropriate
- meta.readonly=true

## 4. Negative checks

- POST /api/v1/helpdesk/apps should not mutate anything
- unknown app_code should return ok=false or empty result with stable status
- invalid limit should be clamped

## 5. DB safety checks

- no DDL
- no DML
- no API POST
- no seed changes
- no ticket/evidence writes

## 6. Report

Report must include:

- target file
- backup path
- syntax result
- server URL
- HTTP result files
- secret scan
- FINAL_STATUS
