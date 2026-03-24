# ============================================================
# PERSONA GROWTH MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona growth model.

model_type:
- persona growth truth model

primary_key:
- persona_growth_id

natural_key:
- persona_id
- growth_scope
- growth_version

fields:
- persona_growth_id
- persona_id
- growth_scope
- growth_version
- growth_status
- growth_value
- growth_reason_summary
- source_state_version
- measured_at
- created_at
- updated_at

growth_status_enum:
- active
- revised
- frozen
- archived

truth_boundary:
Persona growth truth belongs to PersonaOS persona-core domain.
