# ============================================================
# CIVILIZATION FINANCIAL RELIEF PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical financial relief program model.

model_type:
- fiscal rescue governance model

primary_key:
- financial_relief_program_id

natural_key:
- relief_scope
- relief_code
- relief_version

fields:
- financial_relief_program_id
- relief_scope
- relief_code
- relief_version
- relief_status
- relief_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

relief_status_enum:
- draft
- approved
- active
- paused
- completed
- cancelled
- archived

truth_boundary:
Financial relief program truth belongs to CivilizationOS finance-credit domain.
