# ============================================================
# MARKETPLACE SELLER ACCOUNT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical seller account model for Civilization Marketplace.

model_type:
- marketplace seller truth model

primary_key:
- marketplace_seller_account_id

natural_key:
- seller_scope
- seller_code
- seller_version

fields:
- marketplace_seller_account_id
- seller_scope
- seller_code
- seller_version
- seller_status
- seller_type
- owner_user_id
- company_id
- payout_profile_ref
- tax_profile_ref
- seller_summary
- created_at
- updated_at

seller_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

seller_type_enum:
- individual
- company

contract_version_rule:
Marketplace seller accounts must expose explicit version semantics.

truth_boundary:
Marketplace seller account truth belongs to Civilization marketplace-platform domain.
