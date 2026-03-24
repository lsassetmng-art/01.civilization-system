# ============================================================
# CIVILIZATION EDUCATION PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical education program model.

model_type:
- public service truth model

primary_key:
- education_program_id

natural_key:
- nation_id
- program_code
- program_version

fields:
- education_program_id
- nation_id
- program_code
- program_version
- program_status
- target_population_scope
- program_body
- effective_from
- effective_until
- created_at
- updated_at

program_status_enum:
- active
- suspended
- superseded
- expired
- archived

truth_boundary:
Education program truth belongs to CivilizationOS public service domain.
