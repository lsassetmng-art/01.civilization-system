# ============================================================
# MARKETPLACE UI ARCHITECTURE MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-ui-architecture

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- global_marketplace_home
- nation_marketplace_home
- company_direct_store_home
- category_list
- listing_detail
- purchase_confirmation
- user_library
- seller_dashboard
- moderation_status_view
- review_and_report_view


# ============================================================
# 2. UI ENTRY CONTEXTS
# ============================================================

ui_entry_contexts:
- civilization_global_entry
- nation_market_entry
- company_store_entry
- field_map_market_facility_entry
- tenant_market_entry
- search_result_entry


# ============================================================
# 3. FINAL RULE
# ============================================================

Marketplace UI must preserve one canonical commerce structure
while changing entry context,
filters,
and surface emphasis.
