# ============================================================
# CIVILIZATION CURRICULUM PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical curriculum program model.

model_type:
- learning program truth model

primary_key:
- curriculum_program_id

natural_key:
- program_scope
- program_code
- program_version

fields:
- curriculum_program_id
- program_scope
- program_code
- program_version
- program_status
- learning_objective
- target_population_scope
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

program_status_enum:
- draft
- approved
- active
- superseded
- cancelled
- archived

truth_boundary:
Curriculum program truth belongs to CivilizationOS human-capital domain.
