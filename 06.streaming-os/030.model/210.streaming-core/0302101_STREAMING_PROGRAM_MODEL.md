# ============================================================
# STREAMING PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming program model.

model_type:
- program truth model

primary_key:
- streaming_program_id

natural_key:
- program_scope
- program_code
- program_version

fields:
- streaming_program_id
- program_scope
- program_code
- program_version
- program_status
- channel_code
- program_summary
- effective_from
- effective_until
- created_at
- updated_at

program_status_enum:
- draft
- approved
- active
- retired
- archived

contract_version_rule:
Streaming programs must expose explicit version semantics.

truth_boundary:
Streaming program truth belongs to StreamingOS streaming-core domain.
