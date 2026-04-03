# ============================================================
# CIVILIZATION MILITARY_LOGISTICS_ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical military logistics assignment model.

model_type:
- military logistics truth model

primary_key:
- military_logistics_assignment_id

natural_key:
- assignment_scope
- assignment_ref
- target_unit_scope

fields:
- military_logistics_assignment_id
- assignment_scope
- assignment_ref
- target_unit_scope
- assignment_status
- logistics_summary
- source_state_version
- assigned_at
- created_at
- updated_at

assignment_status_enum:
- planned
- active
- completed
- failed
- cancelled
- archived

truth_boundary:
Military-logistics assignment truth belongs to CivilizationOS military-operations domain.
