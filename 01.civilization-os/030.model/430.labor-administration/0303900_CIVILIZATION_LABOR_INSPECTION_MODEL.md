# ============================================================
# CIVILIZATION LABOR INSPECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical labor inspection model.

model_type:
- labor inspection truth model

primary_key:
- labor_inspection_id

natural_key:
- inspection_scope
- inspection_ref
- correlation_id

fields:
- labor_inspection_id
- inspection_scope
- inspection_ref
- correlation_id
- inspection_status
- employer_scope
- inspection_result
- source_state_version
- inspected_at
- created_at
- updated_at

inspection_status_enum:
- scheduled
- completed
- failed
- escalated
- archived

truth_boundary:
Labor-inspection truth belongs to CivilizationOS labor-administration domain.
