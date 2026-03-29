# ============================================================
# GAME SAVE SYNC ENVELOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save sync envelope model.

model_type:
- save transport truth model

primary_key:
- game_save_sync_envelope_id

natural_key:
- envelope_scope
- envelope_ref
- correlation_id

fields:
- game_save_sync_envelope_id
- envelope_scope
- envelope_ref
- correlation_id
- envelope_status
- game_title_code
- device_code
- player_code
- save_hash
- source_state_version
- submitted_at
- created_at
- updated_at

envelope_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
envelope_scope + envelope_ref must suppress duplicate effective save sync intake.

truth_boundary:
Save sync envelope truth belongs to GameOS sync-platform domain.
