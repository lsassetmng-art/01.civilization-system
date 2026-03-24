# ============================================================
# STREAMING AUDIENCE EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming audience event model.

model_type:
- audience event truth model

primary_key:
- streaming_audience_event_id

natural_key:
- event_scope
- event_ref
- correlation_id

fields:
- streaming_audience_event_id
- event_scope
- event_ref
- correlation_id
- event_status
- session_ref
- audience_scope
- event_summary
- source_state_version
- occurred_at
- created_at
- updated_at

event_status_enum:
- recorded
- aggregated
- invalidated
- archived

truth_boundary:
Streaming audience event truth belongs to StreamingOS participation-safety domain.
