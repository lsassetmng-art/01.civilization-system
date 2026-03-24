# ============================================================
# GAME RANKING RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game ranking record model.

model_type:
- ranking truth model

primary_key:
- game_ranking_record_id

natural_key:
- ranking_scope
- ranking_ref
- ranking_window

fields:
- game_ranking_record_id
- ranking_scope
- ranking_ref
- ranking_window
- ranking_status
- player_code
- ranking_summary
- ranking_value
- source_state_version
- recorded_at
- created_at
- updated_at

ranking_status_enum:
- current
- revised
- locked
- invalidated
- archived

truth_boundary:
Game ranking truth belongs to GameOS progression-reward domain.
