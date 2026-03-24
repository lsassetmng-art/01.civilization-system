# ============================================================
# STREAMING LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for StreamingOS.

model_type:
- lifecycle governance truth model

primary_key:
- streaming_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- streaming_lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Streaming lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Streaming lifecycle state profile truth belongs to StreamingOS cross-cutting-completion domain.
