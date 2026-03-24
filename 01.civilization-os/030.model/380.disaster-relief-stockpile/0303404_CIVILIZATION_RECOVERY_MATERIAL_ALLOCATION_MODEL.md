# ============================================================
# CIVILIZATION RECOVERY MATERIAL ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical recovery material allocation model.

model_type:
- recovery logistics truth model

primary_key:
- recovery_material_allocation_id

natural_key:
- allocation_scope
- allocation_ref
- target_project_ref

fields:
- recovery_material_allocation_id
- allocation_scope
- allocation_ref
- target_project_ref
- allocation_status
- material_summary
- allocated_quantity
- source_state_version
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- planned
- active
- completed
- failed
- reversed
- archived

truth_boundary:
Recovery-material allocation truth belongs to CivilizationOS disaster-relief-stockpile domain.
