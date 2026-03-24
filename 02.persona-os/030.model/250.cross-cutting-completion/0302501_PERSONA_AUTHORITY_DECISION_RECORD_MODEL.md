# ============================================================
# PERSONA AUTHORITY DECISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical authority decision record model for PersonaOS.

model_type:
- authority trace truth model

primary_key:
- persona_authority_decision_record_id

natural_key:
- decision_scope
- decision_ref
- correlation_id

fields:
- persona_authority_decision_record_id
- decision_scope
- decision_ref
- correlation_id
- decision_status
- deciding_scope
- authority_basis
- decision_summary
- source_state_version
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- executed
- superseded
- archived

truth_boundary:
Persona authority decision truth belongs to PersonaOS cross-cutting-completion domain.
