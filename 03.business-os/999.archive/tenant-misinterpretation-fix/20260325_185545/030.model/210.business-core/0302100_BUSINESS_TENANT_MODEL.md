# ============================================================
# BUSINESS TENANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business tenant model.

model_type:
- tenant truth model

primary_key:
- business_tenant_id

natural_key:
- tenant_scope
- tenant_code
- tenant_version

fields:
- business_tenant_id
- tenant_scope
- tenant_code
- tenant_version
- tenant_status
- owner_scope
- tenant_class
- effective_from
- effective_until
- created_at
- updated_at

tenant_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Business tenants must expose explicit version semantics.

truth_boundary:
Business tenant truth belongs to BusinessOS business-core domain.
