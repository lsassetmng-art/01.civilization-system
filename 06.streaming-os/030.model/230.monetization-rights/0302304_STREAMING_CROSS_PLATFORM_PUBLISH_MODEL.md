# ============================================================
# STREAMING CROSS PLATFORM PUBLISH MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cross-platform publish model.

model_type:
- publish truth model

primary_key:
- streaming_cross_platform_publish_id

natural_key:
- publish_scope
- publish_ref
- correlation_id

fields:
- streaming_cross_platform_publish_id
- publish_scope
- publish_ref
- correlation_id
- publish_status
- target_platform_scope
- publish_summary
- source_state_version
- published_at
- created_at
- updated_at

publish_status_enum:
- pending
- published
- failed
- reversed
- archived

idempotency_rule:
publish_scope + publish_ref must suppress duplicate effective publish.

truth_boundary:
Streaming cross-platform publish truth belongs to StreamingOS monetization-rights domain.
