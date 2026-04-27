# AICompanyManager Backend Readonly Bootstrap Execution Canon

phase: Phase HF
status: backend-readonly-bootstrap-execution-canon

## Endpoint

method:
- GET

path:
- /api/aicm/v1/bootstrap

local smoke URL:
- http://127.0.0.1:18761/api/aicm/v1/bootstrap

## Backend smoke server

- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/bootstrap-readonly-live-smoke-server.js

## Response output

- /data/data/com.termux/files/home/.tmp/AICompanyManager/20260427_102125_phase_he_hh_readonly_api_connect_execution/readonly_bootstrap_response.json

## Backend DB access

Mode:
- read only

Target:
- Persona-side DB

Environment:
- PERSONA_DATABASE_URL

Tables:
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
