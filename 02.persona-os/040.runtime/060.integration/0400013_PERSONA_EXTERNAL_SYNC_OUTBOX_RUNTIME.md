# ============================================================
# PERSONA EXTERNAL SYNC OUTBOX RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Manage dispatch lifecycle of PersonaOS outbound sync results
for external OS domains.

runtime_scope:
- select pending outbox rows
- validate target and payload
- dispatch sync event
- mark result
- schedule retry

input_model:
- PERSONA_EXTERNAL_SYNC_OUTBOX_MODEL

processing_steps:
1 select pending or retryable outbox event
2 verify target_os, sync_event_type, and payload version
3 verify payload immutability and contract shape
4 dispatch to external OS integration boundary
5 record dispatch result
6 update retry metadata if needed
7 move terminal failures toward dead-letter handling

success_condition:
- outbox row marked dispatched
- dispatched_at recorded
- payload remains immutable after success

failure_condition:
- dispatch transport failed
- target rejected contract
- contract incompatibility detected
- retry scheduling failed

dead_letter_conditions:
- unrecoverable contract incompatibility
- unauthorized target
- retry budget exhausted with terminal classification

retry_principles:
- preserve idempotency
- preserve correlation and causation traceability
- separate transient from terminal failure

idempotency_rule:
event_idempotency_key must suppress duplicate effective sends.
