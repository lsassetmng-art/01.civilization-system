# ============================================================
# PERSONA APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for PersonaOS.

model_type:
- approval lineage truth model

primary_key:
- persona_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- persona_approval_trail_id
- trail_scope
- trail_ref
- correlation_id
- trail_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

trail_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Persona approval trail truth belongs to PersonaOS cross-cutting-completion domain.
