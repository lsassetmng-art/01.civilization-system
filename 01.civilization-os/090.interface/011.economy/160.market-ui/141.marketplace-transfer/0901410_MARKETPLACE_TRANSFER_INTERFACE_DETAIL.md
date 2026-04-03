# ============================================================
# MARKETPLACE TRANSFER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for marketplace transfer lifecycle handling.

required_fields:
- request_ref or transfer_ref
- source_seller_code
- target_seller_code
- marketplace_product_code
- game_title_code
- correlation_id

compatibility_rule:
Marketplace transfer interfaces must remain seller-aware and title-aware.
