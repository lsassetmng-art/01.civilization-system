# ============================================================
# CIVILIZATION DISASTER RECOVERY PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical disaster recovery program model.

model_type:
- recovery governance model

primary_key:
- disaster_recovery_program_id

natural_key:
- recovery_scope
- recovery_code
- recovery_version

fields:
- disaster_recovery_program_id
- recovery_scope
- recovery_code
- recovery_version
- recovery_status
- recovery_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

recovery_status_enum:
- active
- paused
- completed
- superseded
- cancelled

truth_boundary:
Disaster recovery program truth belongs to CivilizationOS recovery governance domain.
