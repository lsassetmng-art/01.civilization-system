# ============================================================
# GAME STATE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game state snapshot model.

model_type:
- state snapshot truth model

primary_key:
- game_state_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_state_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- player_code
- snapshot_hash
- source_lineage
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- superseded
- invalidated
- archived

truth_boundary:
Game state snapshot truth belongs to GameOS game-core domain.
