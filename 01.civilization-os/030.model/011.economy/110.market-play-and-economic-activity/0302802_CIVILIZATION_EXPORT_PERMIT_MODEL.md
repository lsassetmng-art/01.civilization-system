# ============================================================
# CIVILIZATION EXPORT PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical export permit model.

model_type:
- cross-border permission truth model

primary_key:
- export_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- export_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- exporter_scope
- goods_scope
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
Export permits must expose explicit version semantics.

truth_boundary:
Export-permit truth belongs to CivilizationOS external-trade-aid domain.
