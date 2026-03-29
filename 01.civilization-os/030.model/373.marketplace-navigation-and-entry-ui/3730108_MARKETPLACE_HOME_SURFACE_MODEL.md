# ============================================================
# MARKETPLACE HOME SURFACE MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-home-surface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HOME SURFACES
# ============================================================

home_surfaces:
- civilization_global_market_home
- nation_market_home
- company_direct_store_home


# ============================================================
# 2. GLOBAL HOME BLOCKS
# ============================================================

global_home_blocks:
- featured_goods
- top_rankings
- nation_themes
- trending_categories
- official_collections
- search_shortcut
- user_library_shortcut


# ============================================================
# 3. NATION HOME BLOCKS
# ============================================================

nation_home_blocks:
- nation_recommended_goods
- nation_official_goods
- culturally_aligned_goods
- nation_trending_goods
- nation_restriction_notice
- nation_tax_notice


# ============================================================
# 4. COMPANY HOME BLOCKS
# ============================================================

company_home_blocks:
- brand_header
- featured_store_goods
- company_categories
- bundles
- reviews_summary
- campaigns
- official_badges
- seller_information


# ============================================================
# 5. FINAL RULE
# ============================================================

Home surfaces must reflect
entry context immediately
without requiring the user
to infer scope manually.
