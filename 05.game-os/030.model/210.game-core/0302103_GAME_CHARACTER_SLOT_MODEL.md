# ============================================================
# GAME CHARACTER SLOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game character slot model.

model_type:
- character slot truth model

primary_key:
- game_character_slot_id

natural_key:
- slot_scope
- slot_code
- slot_version

fields:
- game_character_slot_id
- slot_scope
- slot_code
- slot_version
- slot_status
- player_code
- character_summary
- effective_from
- effective_until
- created_at
- updated_at

slot_status_enum:
- draft
- assigned
- active
- removed
- archived

contract_version_rule:
Game character slots must expose explicit version semantics.

truth_boundary:
Game character slot truth belongs to GameOS game-core domain.
