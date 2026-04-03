# ============================================================
# MARKETPLACE LIST SCREEN MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-list-screen

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LIST SCREEN TYPES
# ============================================================

list_screen_types:
- featured_list
- category_list
- ranking_list
- nation_recommended_list
- seller_store_list
- search_result_list
- library_access_list
- moderation_review_list


# ============================================================
# 2. REQUIRED LIST FIELDS
# ============================================================

list_screen_fields:
- list_id
- list_type
- title
- context_scope
- active_filters
- active_sort
- listing_cards
- entry_banner
- pagination_supported
- compare_supported
- favorite_supported


# ============================================================
# 3. LIST CARD FIELDS
# ============================================================

listing_card_fields:
- listing_id
- title
- seller_name
- category_name
- price_label
- trust_badges
- nation_visibility_notes
- preview_asset
- promotion_badge
- library_owned_state


# ============================================================
# 4. FINAL RULE
# ============================================================

List screens must expose
what the user can browse now,
what is restricted,
and what is already owned.
