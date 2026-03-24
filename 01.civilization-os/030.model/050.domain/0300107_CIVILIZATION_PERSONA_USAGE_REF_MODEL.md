# ============================================================
# CIVILIZATION PERSONA USAGE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define civilization-level Persona usage reference model.

model_type:
- reflected governance model

primary_key:
- civilization_persona_usage_ref_id

natural_key:
- nation_id
- persona_id
- usage_scope

fields:
- civilization_persona_usage_ref_id
- nation_id
- persona_id
- usage_scope
- usage_status
- trust_level
- source_persona_state_version
- source_sync_event_id
- correlation_id
- synced_at
- created_at
- updated_at

usage_status_enum:
- pending
- active
- suspended
- revoked
- expired

truth_boundary:
This is reflected usage state.
Persona truth remains in PersonaOS.
