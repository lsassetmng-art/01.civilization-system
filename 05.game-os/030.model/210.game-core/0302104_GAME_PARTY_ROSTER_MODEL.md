# ============================================================
# GAME PARTY ROSTER MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game party roster model.

model_type:
- party truth model

primary_key:
- game_party_roster_id

natural_key:
- roster_scope
- roster_code
- roster_version

fields:
- game_party_roster_id
- roster_scope
- roster_code
- roster_version
- roster_status
- player_code
- roster_summary
- effective_from
- effective_until
- created_at
- updated_at

roster_status_enum:
- draft
- approved
- active
- revised
- archived

contract_version_rule:
Game party rosters must expose explicit version semantics.

truth_boundary:
Game party roster truth belongs to GameOS game-core domain.
