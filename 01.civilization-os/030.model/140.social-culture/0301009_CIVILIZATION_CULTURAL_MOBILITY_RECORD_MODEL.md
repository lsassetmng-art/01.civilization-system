# ============================================================
# CIVILIZATION CULTURAL MOBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cultural mobility record model.

model_type:
- movement trace model

primary_key:
- cultural_mobility_record_id

natural_key:
- mobility_scope
- mobility_ref
- correlation_id

fields:
- cultural_mobility_record_id
- mobility_scope
- mobility_ref
- mobility_status
- movement_type
- source_scope
- target_scope
- source_state_version
- correlation_id
- moved_at
- created_at
- updated_at

mobility_status_enum:
- pending
- approved
- completed
- rejected
- reversed
- archived

truth_boundary:
Cultural mobility truth belongs to CivilizationOS social-culture mobility domain.
