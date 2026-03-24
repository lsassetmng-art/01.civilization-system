# ============================================================
# CIVILIZATION CONSTRUCTION INSPECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical construction inspection model.

model_type:
- urban inspection truth model

primary_key:
- construction_inspection_id

natural_key:
- inspection_scope
- inspection_ref
- correlation_id

fields:
- construction_inspection_id
- inspection_scope
- inspection_ref
- correlation_id
- inspection_status
- target_building_scope
- inspector_scope
- inspection_result
- source_state_version
- inspected_at
- created_at
- updated_at

inspection_status_enum:
- scheduled
- completed
- failed
- waived
- superseded
- archived

truth_boundary:
Construction-inspection truth belongs to CivilizationOS urban-governance domain.
