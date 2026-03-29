# ============================================================
# GAME BUILDER AUTOSAVE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder autosave snapshot model.

model_type:
- autosave truth model

primary_key:
- game_builder_autosave_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_builder_autosave_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- project_code
- snapshot_hash
- autosave_summary
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- restored
- superseded
- archived

truth_boundary:
Builder autosave truth belongs to GameOS builder-webapp domain.
