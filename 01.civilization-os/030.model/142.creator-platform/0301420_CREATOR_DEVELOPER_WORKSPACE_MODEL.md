# ============================================================
# CREATOR DEVELOPER WORKSPACE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical creator developer workspace model.

model_type:
- creator workspace truth model

primary_key:
- creator_developer_workspace_id

natural_key:
- workspace_scope
- workspace_code
- workspace_version

fields:
- creator_developer_workspace_id
- workspace_scope
- workspace_code
- workspace_version
- workspace_status
- seller_code
- owner_user_id
- workspace_summary
- created_at
- updated_at

workspace_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Creator developer workspaces must expose explicit version semantics.

truth_boundary:
Creator developer workspace truth belongs to Civilization creator-platform domain.
