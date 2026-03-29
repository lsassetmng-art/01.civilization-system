# ============================================================
# GAME DEVELOPER IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS developer identity model.

model_type:
- developer identity truth model

primary_key:
- game_developer_identity_id

natural_key:
- developer_scope
- developer_code
- developer_version

fields:
- game_developer_identity_id
- developer_scope
- developer_code
- developer_version
- developer_status
- seller_code
- identity_summary
- created_at
- updated_at

developer_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game developer identities must expose explicit version semantics.

truth_boundary:
Game developer identity truth belongs to GameOS developer-platform domain.
