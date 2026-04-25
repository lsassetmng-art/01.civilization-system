# ============================================================
# PERSONA TRUST MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona trust model.

model_type:
- persona trust truth model

primary_key:
- persona_trust_id

natural_key:
- persona_id
- trust_scope
- trust_version

fields:
- persona_trust_id
- persona_id
- trust_scope
- trust_version
- trust_status
- trust_value
- trust_reason_summary
- source_state_version
- measured_at
- created_at
- updated_at

trust_status_enum:
- active
- revised
- frozen
- archived

truth_boundary:
Persona trust truth belongs to PersonaOS persona-core domain.
