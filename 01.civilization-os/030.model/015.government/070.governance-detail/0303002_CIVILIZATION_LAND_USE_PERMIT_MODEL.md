# ============================================================
# CIVILIZATION LAND USE PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical land use permit model.

model_type:
- urban permission truth model

primary_key:
- land_use_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- land_use_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- applicant_scope
- parcel_scope
- approved_use_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

permit_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Land-use permits must expose explicit version semantics.

truth_boundary:
Land-use permit truth belongs to CivilizationOS urban-governance domain.
