# ============================================================
# STREAMING SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming session model.

model_type:
- session truth model

primary_key:
- streaming_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- streaming_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- channel_code
- program_code
- session_summary
- source_state_version
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- scheduled
- live
- completed
- interrupted
- archived

truth_boundary:
Streaming session truth belongs to StreamingOS streaming-core domain.
