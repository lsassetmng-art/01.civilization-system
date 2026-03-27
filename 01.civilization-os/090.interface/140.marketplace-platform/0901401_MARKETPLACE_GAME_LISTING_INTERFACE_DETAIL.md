# ============================================================
# MARKETPLACE GAME LISTING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for marketplace game listing lifecycle handling.

required_fields:
- product_code or listing_code or purchase_ref
- seller_code
- game_title_code
- entitlement_code where applicable
- correlation_id

compatibility_rule:
Marketplace game listing interfaces must remain seller-aware and GameOS-title-aware.
