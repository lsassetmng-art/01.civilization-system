# ============================================================
# GAME PUBLISH ACTIVATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical publish activation record model in GameOS.

model_type:
- publish activation truth model

primary_key:
- game_publish_activation_record_id

natural_key:
- activation_scope
- activation_ref
- correlation_id

fields:
- game_publish_activation_record_id
- activation_scope
- activation_ref
- correlation_id
- activation_status
- game_title_code
- release_code
- activation_summary
- activated_at
- created_at
- updated_at

activation_status_enum:
- pending
- activated
- failed
- reversed
- archived

idempotency_rule:
activation_scope + activation_ref must suppress duplicate effective publish activation.

truth_boundary:
Game publish activation truth belongs to GameOS developer-platform domain.
