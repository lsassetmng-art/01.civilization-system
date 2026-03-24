# ============================================================
# PERSONA TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona transfer record model.

model_type:
- persona transfer truth model

primary_key:
- persona_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- persona_transfer_record_id
- transfer_scope
- transfer_ref
- correlation_id
- transfer_status
- source_owner_scope
- target_owner_scope
- transfer_summary
- source_state_version
- transferred_at
- created_at
- updated_at

transfer_status_enum:
- proposed
- approved
- transferred
- failed
- reversed
- archived

idempotency_rule:
transfer_scope + transfer_ref must suppress duplicate effective persona transfer.

truth_boundary:
Persona transfer truth belongs to PersonaOS rights-external domain.
