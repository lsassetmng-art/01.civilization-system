# ============================================================
# GAME REWARD GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game reward grant model.

model_type:
- reward truth model

primary_key:
- game_reward_grant_id

natural_key:
- grant_scope
- grant_ref
- correlation_id

fields:
- game_reward_grant_id
- grant_scope
- grant_ref
- correlation_id
- grant_status
- player_code
- reward_summary
- source_state_version
- granted_at
- created_at
- updated_at

grant_status_enum:
- pending
- granted
- failed
- reversed
- archived

idempotency_rule:
grant_scope + grant_ref must suppress duplicate effective reward grant.

truth_boundary:
Game reward grant truth belongs to GameOS progression-reward domain.
