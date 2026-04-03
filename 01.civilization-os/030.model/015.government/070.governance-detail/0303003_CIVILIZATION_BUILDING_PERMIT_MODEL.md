# ============================================================
# CIVILIZATION BUILDING PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical building permit model.

model_type:
- construction permission truth model

primary_key:
- building_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- building_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- applicant_scope
- parcel_scope
- building_scope
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
Building permits must expose explicit version semantics.

truth_boundary:
Building-permit truth belongs to CivilizationOS urban-governance domain.
