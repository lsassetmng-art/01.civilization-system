# ============================================================
# CIVILIZATION CULTURAL PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cultural program model.

model_type:
- cultural governance model

primary_key:
- cultural_program_id

natural_key:
- program_scope
- program_code
- program_version

fields:
- cultural_program_id
- program_scope
- program_code
- program_version
- program_status
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
Cultural program truth belongs to CivilizationOS cultural governance domain.
