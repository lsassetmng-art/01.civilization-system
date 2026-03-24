# ============================================================
# STREAMING CLIP REUSE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming clip reuse record model.

model_type:
- clip reuse truth model

primary_key:
- streaming_clip_reuse_record_id

natural_key:
- reuse_scope
- reuse_ref
- correlation_id

fields:
- streaming_clip_reuse_record_id
- reuse_scope
- reuse_ref
- correlation_id
- reuse_status
- source_asset_ref
- reuse_summary
- source_state_version
- reused_at
- created_at
- updated_at

reuse_status_enum:
- pending
- approved
- executed
- reversed
- archived

truth_boundary:
Streaming clip reuse truth belongs to StreamingOS monetization-rights domain.
