# ============================================================
# CIVILIZATION RESEARCH STAFF ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research staff assignment model.

model_type:
- research staffing model

primary_key:
- research_staff_assignment_id

natural_key:
- assignment_scope
- assignment_ref

fields:
- research_staff_assignment_id
- assignment_scope
- assignment_ref
- assignment_status
- staff_scope
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
Research-staff assignment truth belongs to CivilizationOS human-capital domain.
