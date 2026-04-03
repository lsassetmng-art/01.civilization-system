# ============================================================
# NATION MENU AND FACILITY LIST MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: nation-menu-and-facility-list

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NATION MARKETPLACE ENTRY SURFACES
# ============================================================

nation_marketplace_entry_surfaces:
- nation_menu_marketplace
- nation_market_facility_tap
- nation_facility_list_market_tap
- nation_event_recommendation_link


# ============================================================
# 2. NATION ENTRY BEHAVIOR
# ============================================================

nation_entry_behavior:
- opens nation marketplace home
- applies nation restriction profile
- applies nation tax profile
- applies nation cultural visibility profile
- prioritizes nation-available and nation-recommended goods
- may expose state-certified or nation-official goods first


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation entry must feel
like entering a marketplace
already filtered by nation reality.
