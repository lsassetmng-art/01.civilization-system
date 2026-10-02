# AIWorkerOS Helpdesk Read-only API Route Design R2

## 1. Phase1 route scope

Implement read-only GET routes only.

Routes:

- GET /api/v1/helpdesk/apps
- GET /api/v1/helpdesk/apps/:app_code/profile
- GET /api/v1/helpdesk/apps/:app_code/qa
- GET /api/v1/helpdesk/apps/:app_code/errors
- GET /api/v1/helpdesk/apps/:app_code/screens
- GET /api/v1/helpdesk/apps/:app_code/flows
- GET /api/v1/helpdesk/apps/:app_code/escalation-rules
- GET /api/v1/helpdesk/templates

## 2. SQL source mapping

apps:

- aiworker.v_helpdesk_active_supported_app

profile:

- aiworker.v_helpdesk_active_supported_app

qa:

- aiworker.v_helpdesk_active_qa

errors:

- aiworker.v_helpdesk_active_error_pattern

screens:

- aiworker.helpdesk_screen_knowledge

flows:

- aiworker.helpdesk_operation_flow

escalation-rules:

- aiworker.helpdesk_escalation_rule

templates:

- aiworker.helpdesk_answer_template

## 3. Query safety

Required:

- prepared parameters only
- clamp limit and offset
- default limit 50
- maximum limit 200
- no string-concatenated SQL with user input
- no mutation from GET routes
- no API POST route in Phase1

## 4. Response contract

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
