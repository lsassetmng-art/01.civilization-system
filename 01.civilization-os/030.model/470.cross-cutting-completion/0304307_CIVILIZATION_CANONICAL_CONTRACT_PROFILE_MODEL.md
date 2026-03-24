# ============================================================
# CIVILIZATION CANONICAL CONTRACT PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical contract profile model
for shared contract-shape governance.

model_type:
- contract governance truth model

primary_key:
- canonical_contract_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- canonical_contract_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- required_field_summary
- versioning_rule_summary
- compatibility_rule_summary
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
Canonical contract profiles must expose explicit version semantics.

truth_boundary:
Canonical-contract-profile truth belongs to CivilizationOS cross-cutting-completion domain.
