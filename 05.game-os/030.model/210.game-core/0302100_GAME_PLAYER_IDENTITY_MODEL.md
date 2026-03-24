# ============================================================
# GAME PLAYER IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game player identity model.

model_type:
- player identity truth model

primary_key:
- game_player_identity_id

natural_key:
- player_scope
- player_code
- identity_version

fields:
- game_player_identity_id
- player_scope
- player_code
- identity_version
- identity_status
- owner_scope
- profile_summary
- effective_from
- effective_until
- created_at
- updated_at

identity_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game player identities must expose explicit version semantics.

truth_boundary:
Game player identity truth belongs to GameOS game-core domain.
