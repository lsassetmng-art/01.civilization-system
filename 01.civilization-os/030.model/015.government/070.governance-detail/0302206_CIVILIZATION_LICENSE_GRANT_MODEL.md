# ============================================================
# CIVILIZATION LICENSE GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical license grant model.

model_type:
- rights transfer truth model

primary_key:
- license_grant_id

natural_key:
- license_scope
- license_code
- license_version

fields:
- license_grant_id
- license_scope
- license_code
- license_version
- license_status
- licensor_scope
- licensee_scope
- granted_rights
- source_ip_code
- effective_from
- effective_until
- created_at
- updated_at

license_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
License grants must expose explicit version semantics.

truth_boundary:
License-grant truth belongs to CivilizationOS technology-governance domain.
