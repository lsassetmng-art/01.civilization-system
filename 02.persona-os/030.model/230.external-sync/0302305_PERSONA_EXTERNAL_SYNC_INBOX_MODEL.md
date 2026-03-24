# ============================================================
# PERSONA EXTERNAL SYNC INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync inbox model.

model_type:
- sync intake truth model

primary_key:
- persona_external_sync_inbox_id

natural_key:
- inbox_scope
- inbox_ref
- correlation_id

fields:
- persona_external_sync_inbox_id
- inbox_scope
- inbox_ref
- correlation_id
- inbox_status
- source_scope
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
inbox_scope + inbox_ref must suppress duplicate effective sync consumption.

truth_boundary:
External sync inbox truth belongs to PersonaOS external-sync domain.
