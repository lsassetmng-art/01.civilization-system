# ============================================================
# GAME MISSION PROGRESS MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game mission progress model.

model_type:
- mission progress truth model

primary_key:
- game_mission_progress_id

natural_key:
- progress_scope
- progress_ref
- progress_window

fields:
- game_mission_progress_id
- progress_scope
- progress_ref
- progress_window
- progress_status
- player_code
- mission_summary
- progress_value
- source_state_version
- recorded_at
- created_at
- updated_at

progress_status_enum:
- current
- revised
- completed
- failed
- archived

truth_boundary:
Game mission progress truth belongs to GameOS progression-reward domain.
