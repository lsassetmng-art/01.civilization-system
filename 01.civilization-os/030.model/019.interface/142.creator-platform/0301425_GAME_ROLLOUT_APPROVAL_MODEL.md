# ============================================================
# GAME ROLLOUT APPROVAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game rollout approval model.

model_type:
- rollout governance truth model

primary_key:
- game_rollout_approval_id

natural_key:
- approval_scope
- approval_ref
- correlation_id

fields:
- game_rollout_approval_id
- approval_scope
- approval_ref
- correlation_id
- approval_status
- game_title_code
- release_code
- rollout_summary
- approved_at
- created_at
- updated_at

approval_status_enum:
- pending
- approved
- rejected
- executed
- archived

truth_boundary:
Game rollout approval truth belongs to Civilization creator-platform domain.
