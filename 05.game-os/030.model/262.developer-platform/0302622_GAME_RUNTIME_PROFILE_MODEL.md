# ============================================================
# GAME RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game runtime profile model for builder-backed games.

model_type:
- runtime governance truth model

primary_key:
- game_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_type
- capability_summary
- compatibility_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

runtime_type_enum:
- visual_novel
- rpg
- puzzle
- strategy
- card_board
- action_lite

contract_version_rule:
Game runtime profiles must expose explicit version semantics.

truth_boundary:
Game runtime profile truth belongs to GameOS developer-platform domain.
