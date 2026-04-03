# ============================================================
# MARKETPLACE PAYOUT PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical payout profile model for marketplace sellers.

model_type:
- payout governance truth model

primary_key:
- marketplace_payout_profile_id

natural_key:
- payout_scope
- payout_code
- payout_version

fields:
- marketplace_payout_profile_id
- payout_scope
- payout_code
- payout_version
- payout_status
- seller_code
- payout_method_summary
- payout_schedule_summary
- created_at
- updated_at

payout_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Marketplace payout profiles must expose explicit version semantics.

truth_boundary:
Marketplace payout profile truth belongs to Civilization marketplace-platform domain.
