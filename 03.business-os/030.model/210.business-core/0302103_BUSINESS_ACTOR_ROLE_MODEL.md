# ============================================================
# BUSINESS ACTOR ROLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business actor role model.

model_type:
- role truth model

primary_key:
- business_actor_role_id

natural_key:
- role_scope
- role_code
- role_version

fields:
- business_actor_role_id
- role_scope
- role_code
- role_version
- role_status
- actor_scope
- org_code
- permission_summary
- effective_from
- effective_until
- created_at
- updated_at

role_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

contract_version_rule:
Business actor roles must expose explicit version semantics.

truth_boundary:
Business actor role truth belongs to BusinessOS business-core domain.
