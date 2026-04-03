# ============================================================
# LIBRARY ITEM DETAIL MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: library-item-detail

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DETAIL BLOCKS
# ============================================================

required_detail_blocks:
- owned_item_header
- usage_summary
- license_summary
- event_or_ui_compatibility
- nation_usage_notes
- activation_or_reuse_block
- purchase_origin_summary
- related_owned_or_store_items


# ============================================================
# 2. ACTIONS
# ============================================================

library_item_actions:
- use_now
- apply_to_event_or_ui
- open_compatible_contexts
- open_purchase_origin
- open_seller_store
- report_access_problem


# ============================================================
# 3. FINAL RULE
# ============================================================

Library detail must answer
how the owned asset can be used
and where its rights begin and end.
