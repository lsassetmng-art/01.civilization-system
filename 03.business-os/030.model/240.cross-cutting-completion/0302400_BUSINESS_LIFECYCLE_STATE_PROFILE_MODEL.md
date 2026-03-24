# ============================================================
# BUSINESS LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for BusinessOS.

model_type:
- lifecycle governance truth model

primary_key:
- business_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- business_lifecycle_state_profile_id
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
Business lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Business lifecycle state profile truth belongs to BusinessOS cross-cutting-completion domain.
