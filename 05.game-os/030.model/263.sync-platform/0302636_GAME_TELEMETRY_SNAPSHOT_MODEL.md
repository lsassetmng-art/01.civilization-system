# ============================================================
# GAME TELEMETRY SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical telemetry snapshot model.

model_type:
- telemetry truth model

primary_key:
- game_telemetry_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_window

fields:
- game_telemetry_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_window
- snapshot_status
- game_title_code
- device_code
- telemetry_summary
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- validated
- invalidated
- archived

truth_boundary:
Telemetry snapshot truth belongs to GameOS sync-platform domain.
