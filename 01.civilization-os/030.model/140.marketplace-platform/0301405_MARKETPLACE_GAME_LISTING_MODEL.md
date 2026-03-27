# ============================================================
# MARKETPLACE GAME LISTING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical marketplace game listing model.

model_type:
- marketplace listing truth model

primary_key:
- marketplace_game_listing_id

natural_key:
- listing_scope
- listing_code
- listing_version

fields:
- marketplace_game_listing_id
- listing_scope
- listing_code
- listing_version
- listing_status
- seller_code
- product_code
- region_summary
- age_rating_summary
- availability_summary
- created_at
- updated_at

listing_status_enum:
- draft
- approved
- published
- suspended
- revoked
- archived

contract_version_rule:
Marketplace game listings must expose explicit version semantics.

truth_boundary:
Marketplace game listing truth belongs to Civilization marketplace-platform domain.
