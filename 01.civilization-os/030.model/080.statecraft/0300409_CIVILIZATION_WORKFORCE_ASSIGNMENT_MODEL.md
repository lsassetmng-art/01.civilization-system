# ============================================================
# CIVILIZATION WORKFORCE ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical workforce assignment model.

model_type:
- operational assignment model

primary_key:
- workforce_assignment_id

natural_key:
- nation_id
- assignment_scope
- assignment_ref

fields:
- workforce_assignment_id
- nation_id
- assignment_scope
- assignment_ref
- assignment_status
- assigned_population_value
- target_output_code
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
Workforce assignment truth belongs to CivilizationOS operational statecraft domain.
