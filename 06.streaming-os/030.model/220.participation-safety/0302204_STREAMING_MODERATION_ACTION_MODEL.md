# ============================================================
# STREAMING MODERATION ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming moderation action model.

model_type:
- moderation truth model

primary_key:
- streaming_moderation_action_id

natural_key:
- action_scope
- action_ref
- correlation_id

fields:
- streaming_moderation_action_id
- action_scope
- action_ref
- correlation_id
- action_status
- target_scope
- action_summary
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
Streaming moderation action truth belongs to StreamingOS participation-safety domain.
