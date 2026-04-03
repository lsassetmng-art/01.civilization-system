# ============================================================
# CIVILIZATION RESEARCH PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research program model.

model_type:
- research governance model

primary_key:
- research_program_id

natural_key:
- research_scope
- program_code
- program_version

fields:
- research_program_id
- research_scope
- program_code
- program_version
- program_status
- research_objective
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
Research program truth belongs to CivilizationOS research governance domain.
