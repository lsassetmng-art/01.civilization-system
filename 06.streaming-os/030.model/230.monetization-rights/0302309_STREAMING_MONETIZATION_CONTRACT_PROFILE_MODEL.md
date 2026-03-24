# ============================================================
# STREAMING MONETIZATION CONTRACT PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming monetization contract profile model.

model_type:
- contract governance truth model

primary_key:
- streaming_monetization_contract_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- streaming_monetization_contract_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- required_field_summary
- compatibility_summary
- source_state_version
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Streaming monetization contract profiles must expose explicit version semantics.

truth_boundary:
Streaming monetization contract truth belongs to StreamingOS monetization-rights domain.
