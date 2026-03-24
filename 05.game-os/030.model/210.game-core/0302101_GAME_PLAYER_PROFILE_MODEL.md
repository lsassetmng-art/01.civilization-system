# ============================================================
# GAME PLAYER PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game player profile model.

model_type:
- player profile truth model

primary_key:
- game_player_profile_id

natural_key:
- player_scope
- profile_code
- profile_version

fields:
- game_player_profile_id
- player_scope
- profile_code
- profile_version
- profile_status
- player_code
- preference_summary
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- revised
- archived

contract_version_rule:
Game player profiles must expose explicit version semantics.

truth_boundary:
Game player profile truth belongs to GameOS game-core domain.
