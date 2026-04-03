# ============================================================
# USER LIBRARY MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: user-library

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LIBRARY SURFACES
# ============================================================

library_surfaces:
- library_home
- library_category_list
- library_item_detail
- reusable_asset_list
- event_usable_asset_list
- expired_or_revoked_list


# ============================================================
# 2. REQUIRED LIBRARY FIELDS
# ============================================================

library_fields:
- library_entry_id
- buyer_id
- product_id
- listing_id
- product_title
- category_id
- license_type
- access_mode
- access_state
- activation_state
- expiration_rule
- revocation_supported
- nation_usage_restriction
- reuse_supported
- favorite_state


# ============================================================
# 3. LIBRARY ACTIONS
# ============================================================

library_actions:
- use_asset
- open_library_item_detail
- filter_by_category
- filter_by_event_usability
- filter_by_owned_state
- mark_favorite
- hide_item
- open_purchase_origin
- report_access_issue


# ============================================================
# 4. FINAL RULE
# ============================================================

Library must represent
owned access,
not storefront discovery.
