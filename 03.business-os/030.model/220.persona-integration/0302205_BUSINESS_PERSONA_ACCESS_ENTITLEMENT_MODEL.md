# ============================================================
# BUSINESS PERSONA ACCESS ENTITLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business persona access entitlement model.

model_type:
- entitlement truth model

primary_key:
- business_persona_access_entitlement_id

natural_key:
- entitlement_scope
- entitlement_code
- entitlement_version

fields:
- business_persona_access_entitlement_id
- entitlement_scope
- entitlement_code
- entitlement_version
- entitlement_status
- binding_code
- entitlement_summary
- source_access_grant_code
- effective_from
- effective_until
- created_at
- updated_at

entitlement_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Business persona access entitlements must expose explicit version semantics.

truth_boundary:
Business persona access entitlement truth belongs to BusinessOS persona-integration domain.
