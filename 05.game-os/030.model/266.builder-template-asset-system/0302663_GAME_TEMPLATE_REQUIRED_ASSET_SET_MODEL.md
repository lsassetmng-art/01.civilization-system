# ============================================================
# GAME TEMPLATE REQUIRED ASSET SET MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical required asset set model for templates.

model_type:
- required asset truth model

primary_key:
- game_template_required_asset_set_id

natural_key:
- asset_set_scope
- asset_set_code
- asset_set_version

fields:
- game_template_required_asset_set_id
- asset_set_scope
- asset_set_code
- asset_set_version
- asset_set_status
- profile_code
- required_asset_family_summary
- optional_asset_family_summary
- created_at
- updated_at

asset_set_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template required asset sets must expose explicit version semantics.

truth_boundary:
Template required asset set truth belongs to GameOS builder-template-asset-system domain.
