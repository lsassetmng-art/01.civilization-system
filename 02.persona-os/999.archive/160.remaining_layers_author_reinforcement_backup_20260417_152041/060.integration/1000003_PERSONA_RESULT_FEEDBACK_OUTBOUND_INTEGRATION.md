# PERSONA RESULT FEEDBACK OUTBOUND INTEGRATION

status: implementation-ready-followup

feedback_contract:
Every terminal apply path may emit an outbound result notification
without changing the already-persisted source-of-truth result.

required_fields:
- correlation_id
- apply_result_id
- persona_id
- result_status
- result_code
- terminal_timestamp

rule:
Outbound failure does not erase the durable internal terminal result.
