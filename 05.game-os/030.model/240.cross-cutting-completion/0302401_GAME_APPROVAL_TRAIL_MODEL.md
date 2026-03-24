# ============================================================
# GAME APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for GameOS.

model_type:
- approval lineage truth model

primary_key:
- game_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- game_approval_trail_id
- trail_scope
- trail_ref
- correlation_id
- trail_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

trail_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Game approval trail truth belongs to GameOS cross-cutting-completion domain.
