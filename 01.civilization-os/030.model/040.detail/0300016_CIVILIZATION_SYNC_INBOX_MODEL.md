# ============================================================
# CIVILIZATION SYNC INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inbound synchronization inbox model.

model_type:
- operational sync model

primary_key:
- inbox_event_id

natural_key:
- source_domain
- source_event_id

fields:
- inbox_event_id
- source_domain
- source_event_id
- target_domain
- sync_event_type
- payload
- payload_hash
- consume_status
- consume_attempt_count
- last_error_code
- last_error_message
- correlation_id
- causation_id
- received_at
- consumed_at
- dead_lettered_at
- created_at
- updated_at

consume_status_enum:
- pending
- consuming
- consumed
- failed
- dead_lettered
- ignored_duplicate

state_transition:
- pending -> consuming
- consuming -> consumed
- consuming -> failed
- failed -> consuming
- failed -> dead_lettered
- pending -> ignored_duplicate

idempotency_rule:
Duplicate source_domain + source_event_id must not cause duplicate effective consume.
