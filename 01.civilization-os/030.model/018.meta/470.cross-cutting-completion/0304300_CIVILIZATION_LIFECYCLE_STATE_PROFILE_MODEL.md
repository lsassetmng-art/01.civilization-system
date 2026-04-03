# ============================================================
# CIVILIZATION LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model
for cross-domain state-transition governance.

model_type:
- lifecycle governance truth model

primary_key:
- lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Lifecycle-state-profile truth belongs to CivilizationOS cross-cutting-completion domain.
