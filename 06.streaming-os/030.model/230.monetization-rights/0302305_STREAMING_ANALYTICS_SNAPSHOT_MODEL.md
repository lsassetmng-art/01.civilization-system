# ============================================================
# STREAMING ANALYTICS SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming analytics snapshot model.

model_type:
- analytics truth model

primary_key:
- streaming_analytics_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_window

fields:
- streaming_analytics_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_window
- snapshot_status
- target_scope
- analytics_summary
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- revised
- invalidated
- archived

truth_boundary:
Streaming analytics truth belongs to StreamingOS monetization-rights domain.
