# ============================================================
# STREAMING SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming schedule model.

model_type:
- schedule truth model

primary_key:
- streaming_schedule_id

natural_key:
- schedule_scope
- schedule_ref
- schedule_window

fields:
- streaming_schedule_id
- schedule_scope
- schedule_ref
- schedule_window
- schedule_status
- channel_code
- schedule_summary
- source_state_version
- scheduled_at
- created_at
- updated_at

schedule_status_enum:
- planned
- active
- completed
- cancelled
- archived

truth_boundary:
Streaming schedule truth belongs to StreamingOS streaming-core domain.
