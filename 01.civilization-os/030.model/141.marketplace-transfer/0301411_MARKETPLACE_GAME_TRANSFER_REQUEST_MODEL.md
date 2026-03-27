# ============================================================
# MARKETPLACE GAME TRANSFER REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical marketplace game transfer request model.

model_type:
- transfer request truth model

primary_key:
- marketplace_game_transfer_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- marketplace_game_transfer_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- source_seller_code
- target_seller_code
- marketplace_product_code
- game_title_code
- transfer_summary
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- under_review
- approved
- rejected
- archived

truth_boundary:
Marketplace game transfer request truth belongs to Civilization marketplace-transfer domain.
