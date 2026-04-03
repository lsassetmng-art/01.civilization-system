# ============================================================
# NATION MARKET INFORMATION BOARD MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: nation-market-information-board

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- nation_market_home
- category_highlights
- trend_graphs
- price_signal_summary
- official_campaigns
- seasonal_recommendations
- restricted_goods_notice


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- board_id
- category_highlight_set
- trending_summary
- price_signal_summary
- official_campaign_set
- seasonal_notice_set
- restriction_notice_set


# ============================================================
# 3. RULES
# ============================================================

rules:
- this service is view-only
- related backlinks to nation marketplace are allowed
- nation policy and cultural context must be visible
- official campaigns may be highlighted strongly


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation market board exists
to summarize nation-scale commerce
without replacing the marketplace itself.
