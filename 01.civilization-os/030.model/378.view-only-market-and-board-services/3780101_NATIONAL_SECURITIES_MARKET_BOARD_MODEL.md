# ============================================================
# NATIONAL SECURITIES MARKET BOARD MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: national-securities-market-board

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical board UI
for nation-level securities market viewing.


# ============================================================
# 2. REQUIRED SURFACES
# ============================================================

required_surfaces:
- market_board_home
- national_index_graph
- sector_graph
- listed_company_list
- top_gainers
- top_losers
- volume_leaders
- market_notice_surface
- comparison_surface


# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- market_id
- primary_index_value
- index_change_summary
- sector_summary_set
- listed_company_count
- gainers_summary
- losers_summary
- volume_summary
- market_notice_set
- board_context_banner


# ============================================================
# 4. RULES
# ============================================================

rules:
- this service is view-only
- direct buy and sell actions are not supported
- listed company detail may backlink to securities company service
- graph surfaces must be primary, not secondary
- nation context must be explicit


# ============================================================
# 5. FINAL RULE
# ============================================================

National market board exists
to understand the market,
not to execute trades.
