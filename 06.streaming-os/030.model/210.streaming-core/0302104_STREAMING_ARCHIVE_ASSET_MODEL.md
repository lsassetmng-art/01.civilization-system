# ============================================================
# STREAMING ARCHIVE ASSET MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming archive asset model.

model_type:
- archive asset truth model

primary_key:
- streaming_archive_asset_id

natural_key:
- asset_scope
- asset_ref
- asset_version

fields:
- streaming_archive_asset_id
- asset_scope
- asset_ref
- asset_version
- asset_status
- source_session_ref
- asset_hash
- source_state_version
- archived_at
- created_at
- updated_at

asset_status_enum:
- pending
- archived
- revised
- invalidated
- archived_record

truth_boundary:
Streaming archive asset truth belongs to StreamingOS streaming-core domain.
