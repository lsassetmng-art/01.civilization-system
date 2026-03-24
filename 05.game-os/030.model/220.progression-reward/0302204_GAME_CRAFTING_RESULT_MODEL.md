# ============================================================
# GAME CRAFTING RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game crafting result model.

model_type:
- crafting truth model

primary_key:
- game_crafting_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- game_crafting_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- player_code
- crafting_summary
- source_state_version
- crafted_at
- created_at
- updated_at

result_status_enum:
- pending
- crafted
- failed
- reversed
- archived

idempotency_rule:
result_scope + result_ref must suppress duplicate effective crafting result.

truth_boundary:
Game crafting result truth belongs to GameOS progression-reward domain.
