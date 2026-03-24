# ============================================================
# GAME MODERATION ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game moderation action model.

model_type:
- moderation truth model

primary_key:
- game_moderation_action_id

natural_key:
- action_scope
- action_ref
- correlation_id

fields:
- game_moderation_action_id
- action_scope
- action_ref
- correlation_id
- action_status
- target_player_code
- moderation_summary
- source_state_version
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- approved
- applied
- reversed
- archived

truth_boundary:
Game moderation truth belongs to GameOS battle-security-economy domain.
