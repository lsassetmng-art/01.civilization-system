# ============================================================
# CIVILIZATION PERMISSION GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical permission grant model.

model_type:
- boundary permission truth model

primary_key:
- permission_grant_id

natural_key:
- permission_scope
- permission_code
- permission_version

fields:
- permission_grant_id
- permission_scope
- permission_code
- permission_version
- permission_status
- grantee_scope
- target_interface_code
- granted_actions
- governing_basis
- effective_from
- effective_until
- created_at
- updated_at

permission_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Permission grants must expose explicit version semantics.

truth_boundary:
Permission-grant truth belongs to CivilizationOS interface-governance domain.
