# ============================================================
# GAME MODERATION REVIEW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game moderation review model.

model_type:
- moderation review truth model

primary_key:
- game_moderation_review_id

natural_key:
- review_scope
- review_ref
- correlation_id

fields:
- game_moderation_review_id
- review_scope
- review_ref
- correlation_id
- review_status
- game_title_code
- release_code
- review_summary
- reviewed_at
- created_at
- updated_at

review_status_enum:
- pending
- approved
- rejected
- superseded
- archived

truth_boundary:
Game moderation review truth belongs to Civilization creator-platform domain.
