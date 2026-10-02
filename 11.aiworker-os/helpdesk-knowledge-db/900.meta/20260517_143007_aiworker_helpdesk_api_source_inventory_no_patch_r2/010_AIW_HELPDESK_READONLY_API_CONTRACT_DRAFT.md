# AIWorkerOS Helpdesk Read-only API Contract Draft

## 1. Current status

This is a design draft only.

PATCH=NO
API_POST=NO
DB_WRITE=NO

## 2. Canonical route ownership

Portal site:
- user-facing Helpdesk entry
- target app selection
- return target routing

AIWorkerOS:
- Helpdesk Knowledge DB
- read-only Helpdesk API
- answer generation and escalation logic in later phases

CivilizationOS:
- auth/session/Civilization ID/locale

CommonOS:
- shared UI components only

CX22073JW:
- reference/background only

## 3. Phase1 read-only endpoints

- GET /api/v1/helpdesk/apps
- GET /api/v1/helpdesk/apps/:app_code/profile
- GET /api/v1/helpdesk/apps/:app_code/qa
- GET /api/v1/helpdesk/apps/:app_code/errors
- GET /api/v1/helpdesk/apps/:app_code/screens
- GET /api/v1/helpdesk/apps/:app_code/flows
- GET /api/v1/helpdesk/apps/:app_code/escalation-rules
- GET /api/v1/helpdesk/templates

## 4. Phase1 non-goals

- POST /api/v1/helpdesk/ask
- POST /api/v1/helpdesk/troubleshoot
- POST /api/v1/helpdesk/tickets
- evidence upload
- answer feedback
- response log write
- ticket lifecycle
- Portal UI patch
- CommonOS UI patch

## 5. Response shape

Success:

{
  "ok": true,
  "data": [],
  "meta": {
    "source": "aiworker.helpdesk",
    "readonly": true
  }
}

Error:

{
  "ok": false,
  "reason": "ERROR_CODE",
  "message": "User-facing error message"
}

## 6. Query parameters

Common:
- locale
- q
- screen_code
- flow_code
- limit
- offset

Rules:
- app_code must be parameterized
- do not concatenate untrusted SQL
- use prepared query parameters
- only read from helpdesk tables/views in Phase1
- no mutation in GET routes

## 7. DB source mapping

- apps/profile: aiworker.v_helpdesk_active_supported_app
- qa: aiworker.v_helpdesk_active_qa
- errors: aiworker.v_helpdesk_active_error_pattern
- screens: aiworker.helpdesk_screen_knowledge
- flows: aiworker.helpdesk_operation_flow
- escalation-rules: aiworker.helpdesk_escalation_rule
- templates: aiworker.helpdesk_answer_template
