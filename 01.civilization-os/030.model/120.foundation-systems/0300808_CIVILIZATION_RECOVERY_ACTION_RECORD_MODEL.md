# ============================================================
# CIVILIZATION RECOVERY ACTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical recovery action record model.

model_type:
- recovery operations model

primary_key:
- recovery_action_record_id

natural_key:
- action_ref
- recovery_scope

fields:
- recovery_action_record_id
- action_ref
- recovery_scope
- action_status
- target_scope
- action_summary
- source_program_id
- source_state_version
- correlation_id
- executed_at
- created_at
- updated_at

action_status_enum:
- planned
- approved
- executed
- failed
- cancelled
- archived

truth_boundary:
Recovery action truth belongs to CivilizationOS recovery operations domain.
