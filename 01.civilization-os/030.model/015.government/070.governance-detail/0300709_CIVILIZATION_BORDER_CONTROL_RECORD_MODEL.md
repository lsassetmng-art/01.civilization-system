# ============================================================
# CIVILIZATION BORDER CONTROL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical border control record model.

model_type:
- security operations truth model

primary_key:
- border_control_record_id

natural_key:
- border_scope
- border_ref
- correlation_id

fields:
- border_control_record_id
- border_scope
- border_ref
- border_status
- control_action_type
- target_scope
- source_state_version
- correlation_id
- acted_at
- created_at
- updated_at

border_status_enum:
- normal
- restricted
- closed
- escalated
- archived

truth_boundary:
Border control truth belongs to CivilizationOS security operations domain.
