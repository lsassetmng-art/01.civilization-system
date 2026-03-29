# ============================================================
# GAME SAVE CONFLICT RESOLUTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save conflict resolution record model.

model_type:
- conflict governance truth model

primary_key:
- game_save_conflict_resolution_record_id

natural_key:
- conflict_scope
- conflict_ref
- correlation_id

fields:
- game_save_conflict_resolution_record_id
- conflict_scope
- conflict_ref
- correlation_id
- conflict_status
- game_title_code
- player_code
- resolution_summary
- source_snapshot_ref
- resolved_at
- created_at
- updated_at

conflict_status_enum:
- detected
- resolved
- rejected
- archived

truth_boundary:
Save conflict resolution truth belongs to GameOS sync-platform domain.
