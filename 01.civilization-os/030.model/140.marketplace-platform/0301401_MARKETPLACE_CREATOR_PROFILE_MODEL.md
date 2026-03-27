# ============================================================
# MARKETPLACE CREATOR PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical creator profile model for individual marketplace sellers.

model_type:
- creator commerce truth model

primary_key:
- marketplace_creator_profile_id

natural_key:
- creator_scope
- creator_code
- creator_version

fields:
- marketplace_creator_profile_id
- creator_scope
- creator_code
- creator_version
- creator_status
- seller_code
- display_name
- creator_summary
- created_at
- updated_at

creator_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Marketplace creator profiles must expose explicit version semantics.

truth_boundary:
Marketplace creator profile truth belongs to Civilization marketplace-platform domain.
