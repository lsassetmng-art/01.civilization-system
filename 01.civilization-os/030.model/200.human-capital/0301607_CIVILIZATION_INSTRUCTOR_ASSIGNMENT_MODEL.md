# ============================================================
# CIVILIZATION INSTRUCTOR ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical instructor assignment model.

model_type:
- educational staffing model

primary_key:
- instructor_assignment_id

natural_key:
- assignment_scope
- assignment_ref

fields:
- instructor_assignment_id
- assignment_scope
- assignment_ref
- assignment_status
- instructor_scope
- target_program_code
- source_state_version
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
- archived

truth_boundary:
Instructor-assignment truth belongs to CivilizationOS human-capital domain.
