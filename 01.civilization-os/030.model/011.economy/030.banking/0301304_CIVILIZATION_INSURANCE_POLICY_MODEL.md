# ============================================================
# CIVILIZATION INSURANCE POLICY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical insurance policy model.

model_type:
- risk transfer model

primary_key:
- insurance_policy_id

natural_key:
- policy_scope
- policy_code
- policy_version

fields:
- insurance_policy_id
- policy_scope
- policy_code
- policy_version
- policy_status
- insured_scope
- coverage_scope
- premium_rule
- payout_rule
- effective_from
- effective_until
- created_at
- updated_at

policy_status_enum:
- draft
- approved
- active
- suspended
- expired
- revoked
- archived

contract_version_rule:
Insurance policies must expose explicit version semantics.

truth_boundary:
Insurance policy truth belongs to CivilizationOS finance-credit domain.
