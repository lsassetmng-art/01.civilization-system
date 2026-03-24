# ============================================================
# BUSINESS ORG UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business org unit model.

model_type:
- organizational truth model

primary_key:
- business_org_unit_id

natural_key:
- org_scope
- org_code
- org_version

fields:
- business_org_unit_id
- org_scope
- org_code
- org_version
- org_status
- workspace_code
- parent_org_code
- unit_summary
- effective_from
- effective_until
- created_at
- updated_at

org_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Business org units must expose explicit version semantics.

truth_boundary:
Business org unit truth belongs to BusinessOS business-core domain.
