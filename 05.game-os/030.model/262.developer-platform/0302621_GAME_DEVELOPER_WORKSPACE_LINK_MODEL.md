# ============================================================
# GAME DEVELOPER WORKSPACE LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage between Civilization creator workspace and GameOS developer workspace.

model_type:
- workspace linkage truth model

primary_key:
- game_developer_workspace_link_id

natural_key:
- workspace_code
- developer_code
- link_version

fields:
- game_developer_workspace_link_id
- workspace_code
- developer_code
- link_version
- link_status
- seller_code
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game developer workspace links must expose explicit version semantics.

truth_boundary:
Game developer workspace linkage truth belongs to GameOS developer-platform domain.
