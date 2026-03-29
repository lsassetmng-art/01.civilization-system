# ============================================================
# GAME TITLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title model for user-distributed games.

model_type:
- game title truth model

primary_key:
- game_title_id

natural_key:
- title_scope
- title_code
- title_version

fields:
- game_title_id
- title_scope
- title_code
- title_version
- title_status
- developer_scope
- genre_profile
- title_summary
- effective_from
- effective_until
- created_at
- updated_at

title_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game titles must expose explicit version semantics.

truth_boundary:
Game title truth belongs to GameOS distribution-platform domain.
