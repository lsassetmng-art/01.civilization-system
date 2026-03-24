# ============================================================
# PERSONA EXTERNAL SYNC EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync event model.

model_type:
- sync event truth model

primary_key:
- persona_external_sync_event_id

natural_key:
- event_scope
- event_ref
- correlation_id

fields:
- persona_external_sync_event_id
- event_scope
- event_ref
- correlation_id
- event_status
- event_type
- source_contract_code
- payload_hash
- source_state_version
- occurred_at
- created_at
- updated_at

event_status_enum:
- created
- dispatched
- consumed
- failed
- archived

truth_boundary:
External sync event truth belongs to PersonaOS external-sync domain.
