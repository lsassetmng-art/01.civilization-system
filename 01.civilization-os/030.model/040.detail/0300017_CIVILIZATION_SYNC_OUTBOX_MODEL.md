# ============================================================
# CIVILIZATION SYNC OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outbound synchronization outbox model.

model_type:
- operational sync model

primary_key:
- outbox_event_id

natural_key:
- event_idempotency_key

fields:
- outbox_event_id
- source_domain
- target_domain
- sync_event_type
- payload
- payload_hash
- payload_contract_version
- dispatch_status
- retry_count
- next_retry_at
- dead_lettered_at
- last_error_code
- last_error_message
- correlation_id
- causation_id
- event_idempotency_key
- created_at
- dispatched_at
- updated_at

dispatch_status_enum:
- pending
- dispatching
- dispatched
- failed
- dead_lettered
- cancelled

state_transition:
- pending -> dispatching
- dispatching -> dispatched
- dispatching -> failed
- failed -> dispatching
- failed -> dead_lettered
- pending -> cancelled

idempotency_rule:
event_idempotency_key must suppress duplicate effective sends.

truth_boundary:
Outbox state is operational only.
