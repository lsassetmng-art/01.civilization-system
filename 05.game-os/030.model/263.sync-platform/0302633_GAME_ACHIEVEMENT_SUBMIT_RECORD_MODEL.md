# ============================================================
# GAME ACHIEVEMENT SUBMIT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical achievement submit record model.

model_type:
- achievement submission truth model

primary_key:
- game_achievement_submit_record_id

natural_key:
- submit_scope
- submit_ref
- correlation_id

fields:
- game_achievement_submit_record_id
- submit_scope
- submit_ref
- correlation_id
- submit_status
- game_title_code
- player_code
- achievement_code
- submit_summary
- submitted_at
- created_at
- updated_at

submit_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
submit_scope + submit_ref must suppress duplicate effective achievement submit.

truth_boundary:
Achievement submit truth belongs to GameOS sync-platform domain.
