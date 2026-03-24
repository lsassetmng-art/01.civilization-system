# ============================================================
# STREAMING SHARED RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared retry profile model for StreamingOS.

model_type:
- retry governance truth model

primary_key:
- streaming_shared_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- streaming_shared_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Streaming shared retry profiles must expose explicit version semantics.

truth_boundary:
Streaming shared retry profile truth belongs to StreamingOS cross-cutting-completion domain.
