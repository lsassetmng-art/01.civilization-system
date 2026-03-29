# ============================================================
# BUSINESS WORKSPACE MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business workspace model.

model_type:
- workspace truth model

primary_key:
- business_workspace_id

natural_key:
- workspace_scope
- workspace_code
- workspace_version

fields:
- business_workspace_id
- workspace_scope
- workspace_code
- workspace_version
- workspace_status
- tenant_code
- workspace_summary
- effective_from
- effective_until
- created_at
- updated_at

workspace_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Business workspaces must expose explicit version semantics.

truth_boundary:
Business workspace truth belongs to BusinessOS business-core domain.
