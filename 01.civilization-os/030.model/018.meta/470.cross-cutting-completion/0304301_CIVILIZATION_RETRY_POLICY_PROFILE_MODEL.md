# ============================================================
# CIVILIZATION RETRY POLICY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry policy profile model.

model_type:
- reliability governance truth model

primary_key:
- retry_policy_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- retry_policy_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
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
Retry policy profiles must expose explicit version semantics.

truth_boundary:
Retry-policy-profile truth belongs to CivilizationOS cross-cutting-completion domain.
