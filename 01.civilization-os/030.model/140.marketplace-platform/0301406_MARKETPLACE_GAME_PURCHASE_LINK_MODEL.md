# ============================================================
# MARKETPLACE GAME PURCHASE LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical purchase-to-entitlement linkage model between Civilization Marketplace and GameOS.

model_type:
- cross-os commerce linkage truth model

primary_key:
- marketplace_game_purchase_link_id

natural_key:
- purchase_ref
- entitlement_code
- correlation_id

fields:
- marketplace_game_purchase_link_id
- purchase_ref
- entitlement_code
- correlation_id
- link_status
- seller_code
- product_code
- game_title_code
- purchaser_user_id
- linked_at
- created_at
- updated_at

link_status_enum:
- pending
- linked
- failed
- reversed
- archived

idempotency_rule:
purchase_ref + entitlement_code must suppress duplicate effective commerce linkage.

truth_boundary:
Marketplace purchase linkage truth belongs to Civilization marketplace-platform domain.
