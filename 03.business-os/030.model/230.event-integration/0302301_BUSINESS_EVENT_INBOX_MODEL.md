# ============================================================
# BUSINESS EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business event inbox model.

model_type:
- intake truth model

primary_key:
- business_event_inbox_id

natural_key:
- inbox_scope
- event_ref
- correlation_id

fields:
- business_event_inbox_id
- inbox_scope
- event_ref
- correlation_id
- inbox_status
- source_scope
- event_type
- payload_hash
- source_state_version
- received_at
- created_at
- updated_at

inbox_status_enum:
- pending
- consumed
- ignored_duplicate
- failed
- archived

idempotency_rule:
inbox_scope + event_ref must suppress duplicate effective event consumption.

truth_boundary:
Business event inbox truth belongs to BusinessOS event-integration domain.
