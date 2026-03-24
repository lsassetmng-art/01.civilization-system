# ============================================================
# GAME WORLD SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game world session model.

model_type:
- world session truth model

primary_key:
- game_world_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_world_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- player_code
- world_code
- session_summary
- source_state_version
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- completed
- interrupted
- archived

truth_boundary:
Game world session truth belongs to GameOS game-core domain.
