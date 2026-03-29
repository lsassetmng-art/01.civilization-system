# ============================================================
# REAL ESTATE MARKET BOARD MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: real-estate-market-board

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- market_board_home
- district_price_map
- price_trend_graph
- rent_trend_graph
- district_comparison
- listing_summary_surface
- market_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- city_id
- district_summary_set
- sale_price_summary
- rent_price_summary
- trend_summary
- market_notice_set
- map_overlay_supported


# ============================================================
# 3. RULES
# ============================================================

rules:
- this service is view-only
- property contract execution must route to real estate service
- district heatmap and trend graph are primary display tools
- city and district context must be explicit


# ============================================================
# 4. FINAL RULE
# ============================================================

Real estate market board exists
to expose market conditions
before negotiation or contract entry.
