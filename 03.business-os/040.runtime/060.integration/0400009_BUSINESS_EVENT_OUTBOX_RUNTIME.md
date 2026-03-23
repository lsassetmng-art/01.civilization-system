# ============================================================
# BUSINESS EVENT OUTBOX RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the runtime behavior of BusinessOS outbound Persona sync dispatch.

runtime_scope:
- select pending outbox rows
- validate dispatch readiness
- send canonical payload
- mark dispatch result
- schedule retry if needed

input_model:
- BUSINESS_EVENT_OUTBOX_MODEL

processing_steps:
1 select pending or retryable outbox row
2 validate target_system and event_type
3 validate payload immutability expectations
4 dispatch to PersonaOS integration boundary
5 record dispatch result
6 increment retry metadata if failed
7 move terminal failures toward dead-letter handling

dispatch_rule:
All Business to Persona sync traffic must pass through outbox.

idempotency_rule:
event_idempotency_key must suppress duplicate effective sends.

state_rule:
After successful dispatch, payload must be treated as immutable.
