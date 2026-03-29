# ============================================================
# GAME PIXEL ART ASSET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical pixel art asset profile model.

model_type:
- pixel asset truth model

primary_key:
- game_pixel_art_asset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_pixel_art_asset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- asset_family
- layer_summary
- export_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

asset_family_enum:
- enemy_sprite
- boss_sprite
- item_icon
- map_prop
- ui_icon
- tile

contract_version_rule:
Pixel art asset profiles must expose explicit version semantics.

truth_boundary:
Pixel art asset truth belongs to GameOS builder-template-asset-system domain.
