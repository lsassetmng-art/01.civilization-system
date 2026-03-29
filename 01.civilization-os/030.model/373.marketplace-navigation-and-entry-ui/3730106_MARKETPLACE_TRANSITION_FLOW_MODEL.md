# ============================================================
# MARKETPLACE TRANSITION FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-transition-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOWS
# ============================================================

canonical_flows:
- entry_home_to_category_list
- entry_home_to_featured_list
- list_to_listing_detail
- listing_detail_to_purchase_confirmation
- purchase_confirmation_to_library_result
- listing_detail_to_seller_store
- listing_detail_to_nation_market_home
- listing_detail_to_civilization_market_home
- seller_store_to_listing_detail
- nation_market_home_to_listing_detail


# ============================================================
# 2. BACK NAVIGATION RULES
# ============================================================

back_navigation_rules:
- listing_detail returns to prior list if prior list exists
- purchase_confirmation returns to listing detail on cancel
- purchase_success routes to library access or post-purchase use flow
- seller_store preserves company context on back
- nation_market_home preserves nation context on back


# ============================================================
# 3. FINAL RULE
# ============================================================

Transitions must preserve context
so users do not lose
their browsing scope accidentally.
