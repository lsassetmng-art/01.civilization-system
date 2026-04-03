# ============================================================
# MARKETPLACE GAME PRODUCT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical marketplace game product model.

model_type:
- marketplace product truth model

primary_key:
- marketplace_game_product_id

natural_key:
- product_scope
- product_code
- product_version

fields:
- marketplace_game_product_id
- product_scope
- product_code
- product_version
- product_status
- seller_code
- product_type
- display_name
- pricing_summary
- game_title_code
- created_at
- updated_at

product_status_enum:
- draft
- approved
- published
- suspended
- revoked
- archived

product_type_enum:
- game_application
- game_dlc
- game_bundle
- game_subscription

contract_version_rule:
Marketplace game products must expose explicit version semantics.

truth_boundary:
Marketplace game product truth belongs to Civilization marketplace-platform domain.
