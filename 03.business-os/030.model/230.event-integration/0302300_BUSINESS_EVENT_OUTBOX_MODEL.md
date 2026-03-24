# ============================================================
# BUSINESS EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business event outbox model.

model_type:
- dispatch truth model

primary_key:
- business_event_outbox_id

natural_key:
- outbox_scope
- event_ref
- correlation_id

fields:
- business_event_outbox_id
- outbox_scope
- event_ref
- correlation_id
- outbox_status
- event_type
- target_scope
- payload_hash
- source_state_version
- queued_at
- created_at
- updated_at

outbox_status_enum:
- pending
- dispatched
- failed
- dead_lettered
- archived

idempotency_rule:
outbox_scope + event_ref must suppress duplicate effective event dispatch.

truth_boundary:
Business event outbox truth belongs to BusinessOS event-integration domain.
