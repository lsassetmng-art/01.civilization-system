# ============================================================
# CIVILIZATION ENVIRONMENTAL PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical environmental permit model.

model_type:
- environmental governance truth model

primary_key:
- environmental_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- environmental_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- permit_type
- target_scope
- approved_limits_summary
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
Environmental permits must expose explicit version semantics.

truth_boundary:
Environmental-permit truth belongs to CivilizationOS environment-circularity domain.
