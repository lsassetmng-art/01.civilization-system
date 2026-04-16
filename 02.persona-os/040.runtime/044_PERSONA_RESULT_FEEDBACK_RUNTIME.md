# PERSONA RESULT FEEDBACK RUNTIME

status: implementation-ready-followup

feedback_runtime_contract:
Every inbound apply path ends with a durable result feedback record.

required_fields:
- correlation_id
- event_id
- persona_id
- result_status
- result_code
- written_at
