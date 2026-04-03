# ============================================================
# CIVILIZATION RITUAL PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ritual permit model.

model_type:
- ritual permission truth model

primary_key:
- ritual_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- ritual_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- applicant_scope
- ritual_summary
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
Ritual permits must expose explicit version semantics.

truth_boundary:
Ritual-permit truth belongs to CivilizationOS religion-operations domain.
