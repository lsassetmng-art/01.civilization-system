# ============================================================
# GAME REPLAY UPLOAD RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical replay upload record model.

model_type:
- replay upload truth model

primary_key:
- game_replay_upload_record_id

natural_key:
- upload_scope
- upload_ref
- correlation_id

fields:
- game_replay_upload_record_id
- upload_scope
- upload_ref
- correlation_id
- upload_status
- game_title_code
- player_code
- replay_hash
- upload_summary
- uploaded_at
- created_at
- updated_at

upload_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
upload_scope + upload_ref must suppress duplicate effective replay upload.

truth_boundary:
Replay upload truth belongs to GameOS sync-platform domain.
