# ============================================================
# PERSONA STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona state model.

model_type:
- persona state truth model

primary_key:
- persona_state_id

natural_key:
- persona_id
- state_scope
- state_version

fields:
- persona_state_id
- persona_id
- state_scope
- state_version
- state_status
- current_mode
- emotional_state
- cognitive_state
- source_state_version
- observed_at
- created_at
- updated_at

state_status_enum:
- active
- projected
- constrained
- archived

truth_boundary:
Persona state truth belongs to PersonaOS persona-core domain.
