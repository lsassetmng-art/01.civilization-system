# ============================================================
# MARKETPLACE TAX PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tax profile model for marketplace sellers.

model_type:
- tax governance truth model

primary_key:
- marketplace_tax_profile_id

natural_key:
- tax_scope
- tax_code
- tax_version

fields:
- marketplace_tax_profile_id
- tax_scope
- tax_code
- tax_version
- tax_status
- seller_code
- tax_summary
- created_at
- updated_at

tax_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Marketplace tax profiles must expose explicit version semantics.

truth_boundary:
Marketplace tax profile truth belongs to Civilization marketplace-platform domain.
