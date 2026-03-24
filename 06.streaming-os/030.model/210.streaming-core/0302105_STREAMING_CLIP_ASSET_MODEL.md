# ============================================================
# STREAMING CLIP ASSET MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming clip asset model.

model_type:
- clip asset truth model

primary_key:
- streaming_clip_asset_id

natural_key:
- asset_scope
- asset_ref
- asset_version

fields:
- streaming_clip_asset_id
- asset_scope
- asset_ref
- asset_version
- asset_status
- source_session_ref
- clip_hash
- source_state_version
- clipped_at
- created_at
- updated_at

asset_status_enum:
- pending
- published
- revised
- invalidated
- archived

truth_boundary:
Streaming clip asset truth belongs to StreamingOS streaming-core domain.
