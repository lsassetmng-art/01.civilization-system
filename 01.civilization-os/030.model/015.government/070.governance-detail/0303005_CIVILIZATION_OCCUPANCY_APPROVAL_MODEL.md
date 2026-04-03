# ============================================================
# CIVILIZATION OCCUPANCY APPROVAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical occupancy approval model.

model_type:
- usage authorization truth model

primary_key:
- occupancy_approval_id

natural_key:
- approval_scope
- approval_code
- approval_version

fields:
- occupancy_approval_id
- approval_scope
- approval_code
- approval_version
- approval_status
- target_building_scope
- approved_occupancy_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

approval_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Occupancy approvals must expose explicit version semantics.

truth_boundary:
Occupancy-approval truth belongs to CivilizationOS urban-governance domain.
