# ============================================================
# CIVILIZATION SYNC DISPATCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical runtime for outbound synchronization dispatch.

runtime_scope:
- read pending outbox event
- validate dispatch readiness
- dispatch contract
- persist result
- schedule retry where applicable

input_model:
- CIVILIZATION_SYNC_OUTBOX_MODEL

trigger_conditions:
- pending outbox event exists
- retryable outbox event selected
- approved rebroadcast request

processing_steps:
1 select pending or retryable outbox event
2 validate target_domain, sync_event_type, and payload version
3 verify payload immutability and idempotency basis
4 dispatch contract through canonical boundary
5 persist dispatched or failed result
6 update retry metadata
7 move terminal failures toward dead-letter handling

success_condition:
- outbox event dispatched once effectively
- dispatched_at recorded
- payload remains immutable after success

failure_condition:
- transport failure
- target rejection
- contract incompatibility
- retry scheduling failure

dead_letter_conditions:
- unrecoverable contract incompatibility
- unauthorized target
- retry budget exhausted after terminal classification

retry_principles:
- preserve idempotency
- preserve correlation and causation traceability
- separate transient from terminal failure
