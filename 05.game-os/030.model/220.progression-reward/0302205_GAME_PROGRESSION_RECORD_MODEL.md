# ============================================================
# GAME PROGRESSION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game progression record model.

model_type:
- progression truth model

primary_key:
- game_progression_record_id

natural_key:
- progression_scope
- progression_ref
- progression_window

fields:
- game_progression_record_id
- progression_scope
- progression_ref
- progression_window
- progression_status
- player_code
- progression_summary
- progression_value
- source_state_version
- recorded_at
- created_at
- updated_at

progression_status_enum:
- current
- revised
- level_up
- invalidated
- archived

truth_boundary:
Game progression truth belongs to GameOS progression-reward domain.
