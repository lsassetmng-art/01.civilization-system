# ============================================================
# GAME BATTLE RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game battle result model.

model_type:
- battle result truth model

primary_key:
- game_battle_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- game_battle_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- session_ref
- result_summary
- source_state_version
- recorded_at
- created_at
- updated_at

result_status_enum:
- pending
- recorded
- corrected
- invalidated
- archived

truth_boundary:
Game battle result truth belongs to GameOS battle-security-economy domain.
