# ============================================================
# STREAMING CHANNEL MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming channel model.

model_type:
- channel truth model

primary_key:
- streaming_channel_id

natural_key:
- channel_scope
- channel_code
- channel_version

fields:
- streaming_channel_id
- channel_scope
- channel_code
- channel_version
- channel_status
- owner_scope
- channel_summary
- effective_from
- effective_until
- created_at
- updated_at

channel_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Streaming channels must expose explicit version semantics.

truth_boundary:
Streaming channel truth belongs to StreamingOS streaming-core domain.
