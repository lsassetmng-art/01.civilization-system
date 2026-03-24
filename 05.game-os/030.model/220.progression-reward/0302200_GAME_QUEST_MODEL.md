# ============================================================
# GAME QUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game quest model.

model_type:
- quest truth model

primary_key:
- game_quest_id

natural_key:
- quest_scope
- quest_code
- quest_version

fields:
- game_quest_id
- quest_scope
- quest_code
- quest_version
- quest_status
- world_code
- quest_summary
- effective_from
- effective_until
- created_at
- updated_at

quest_status_enum:
- draft
- approved
- active
- retired
- archived

contract_version_rule:
Game quests must expose explicit version semantics.

truth_boundary:
Game quest truth belongs to GameOS progression-reward domain.
