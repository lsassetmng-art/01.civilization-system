# ============================================================
# GAME UNIT ART ASSET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical unit art asset profile model.

model_type:
- unit asset truth model

primary_key:
- game_unit_art_asset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_unit_art_asset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- unit_class_summary
- layer_summary
- variant_summary
- export_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Unit art asset profiles must expose explicit version semantics.

truth_boundary:
Unit art asset truth belongs to GameOS builder-template-asset-system domain.
