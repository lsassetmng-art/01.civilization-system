# ============================================================
# COMPANY MENU AND COMPANY LIST MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: company-menu-and-company-list

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMPANY STORE ENTRY SURFACES
# ============================================================

company_store_entry_surfaces:
- company_list_tap
- company_facility_tap
- direct_store_badge_tap
- seller_card_tap
- company_campaign_link


# ============================================================
# 2. COMPANY ENTRY BEHAVIOR
# ============================================================

company_entry_behavior:
- opens company direct store home
- applies seller lock
- preserves company branding and store theme
- exposes company categories, featured goods, reviews, and bundles
- may expose seller analytics only for authorized operators


# ============================================================
# 3. FINAL RULE
# ============================================================

Company entry must feel
like entering a store,
not a generic marketplace list.
