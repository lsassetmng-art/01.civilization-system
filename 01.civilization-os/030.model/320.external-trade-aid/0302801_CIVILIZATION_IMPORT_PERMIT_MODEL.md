# ============================================================
# CIVILIZATION IMPORT PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical import permit model.

model_type:
- cross-border permission truth model

primary_key:
- import_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- import_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- importer_scope
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
Import permits must expose explicit version semantics.

truth_boundary:
Import-permit truth belongs to CivilizationOS external-trade-aid domain.
