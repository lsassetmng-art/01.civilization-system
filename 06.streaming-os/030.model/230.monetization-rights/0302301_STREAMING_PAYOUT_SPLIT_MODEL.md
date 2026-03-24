# ============================================================
# STREAMING PAYOUT SPLIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming payout split model.

model_type:
- payout truth model

primary_key:
- streaming_payout_split_id

natural_key:
- split_scope
- split_code
- split_version

fields:
- streaming_payout_split_id
- split_scope
- split_code
- split_version
- split_status
- target_scope
- split_summary
- effective_from
- effective_until
- created_at
- updated_at

split_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Streaming payout splits must expose explicit version semantics.

truth_boundary:
Streaming payout split truth belongs to StreamingOS monetization-rights domain.
