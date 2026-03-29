# ============================================================
# CIVILIZATION GLOBAL MENU MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: civilization-global-menu

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MARKETPLACE-RELEVANT GLOBAL MENU ITEMS
# ============================================================

marketplace_relevant_global_menu_items:
- Marketplace
- Featured Digital Goods
- Nation Themes
- Company Stores
- Rankings
- Search
- User Library


# ============================================================
# 2. GLOBAL ENTRY BEHAVIOR
# ============================================================

global_entry_behavior:
- opens civilization-global marketplace home
- removes seller lock
- removes nation lock unless user applies filter
- prioritizes featured, ranking, and cross-nation browsing
- exposes major categories first


# ============================================================
# 3. FINAL RULE
# ============================================================

Global menu entry must feel
like civilization-wide browsing,
not a nation or seller storefront.
