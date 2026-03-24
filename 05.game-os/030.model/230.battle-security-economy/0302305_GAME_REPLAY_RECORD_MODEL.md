# ============================================================
# GAME REPLAY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game replay record model.

model_type:
- replay truth model

primary_key:
- game_replay_record_id

natural_key:
- replay_scope
- replay_ref
- correlation_id

fields:
- game_replay_record_id
- replay_scope
- replay_ref
- correlation_id
- replay_status
- source_session_ref
- replay_hash
- source_state_version
- recorded_at
- created_at
- updated_at

replay_status_enum:
- recorded
- published
- corrected
- invalidated
- archived

truth_boundary:
Game replay truth belongs to GameOS battle-security-economy domain.
