# ============================================================
# GAME SAVE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save snapshot model.

model_type:
- save state truth model

primary_key:
- game_save_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_save_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- game_title_code
- player_code
- snapshot_hash
- source_envelope_ref
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- accepted
- superseded
- invalidated
- archived

truth_boundary:
Save snapshot truth belongs to GameOS sync-platform domain.
