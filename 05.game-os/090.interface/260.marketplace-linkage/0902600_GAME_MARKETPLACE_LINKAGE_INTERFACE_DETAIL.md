# ============================================================
# GAME MARKETPLACE LINKAGE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS marketplace linkage lifecycle handling.

required_fields:
- game_title_code
- marketplace_product_code
- seller_code
- entitlement_code where applicable
- correlation_id

compatibility_rule:
Game marketplace linkage interfaces must remain title-aware and commerce-aware.
