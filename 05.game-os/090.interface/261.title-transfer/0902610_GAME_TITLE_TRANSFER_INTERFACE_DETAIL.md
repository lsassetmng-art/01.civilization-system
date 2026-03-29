# ============================================================
# GAME TITLE TRANSFER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game title transfer lifecycle handling.

required_fields:
- request_ref or transfer_ref
- game_title_code
- source_seller_code
- target_seller_code
- marketplace_product_code where applicable
- correlation_id

compatibility_rule:
Game title transfer interfaces must remain title-aware and transfer-aware.
