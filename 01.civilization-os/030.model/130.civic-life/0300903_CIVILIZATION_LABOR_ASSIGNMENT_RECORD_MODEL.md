# ============================================================
# CIVILIZATION LABOR ASSIGNMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical labor assignment record model.

model_type:
- operational civic model

primary_key:
- labor_assignment_record_id

natural_key:
- assignment_scope
- assignment_ref

fields:
- labor_assignment_record_id
- assignment_scope
- assignment_ref
- assignment_status
- target_work_scope
- assigned_population_value
- source_state_version
- correlation_id
- effective_from
- effective_until
- created_at
- updated_at

assignment_status_enum:
- planned
- active
- suspended
- completed
- cancelled

truth_boundary:
Labor assignment truth belongs to CivilizationOS civic operations domain.
