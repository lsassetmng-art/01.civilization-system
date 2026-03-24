# ============================================================
# PERSONA EXTERNAL SYNC OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync outbox model.

model_type:
- sync dispatch truth model

primary_key:
- persona_external_sync_outbox_id

natural_key:
- outbox_scope
- outbox_ref
- correlation_id

fields:
- persona_external_sync_outbox_id
- outbox_scope
- outbox_ref
- correlation_id
- outbox_status
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
outbox_scope + outbox_ref must suppress duplicate effective sync dispatch.

truth_boundary:
External sync outbox truth belongs to PersonaOS external-sync domain.
