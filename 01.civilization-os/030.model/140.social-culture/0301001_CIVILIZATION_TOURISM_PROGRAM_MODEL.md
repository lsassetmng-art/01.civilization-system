# ============================================================
# CIVILIZATION TOURISM PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tourism program model.

model_type:
- public program model

primary_key:
- tourism_program_id

natural_key:
- program_scope
- program_code
- program_version

fields:
- tourism_program_id
- program_scope
- program_code
- program_version
- program_status
- destination_scope
- program_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

program_status_enum:
- active
- paused
- completed
- superseded
- cancelled

truth_boundary:
Tourism program truth belongs to CivilizationOS social-culture domain.
