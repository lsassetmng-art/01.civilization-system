# ============================================================
# SURPLUS SALES ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: surplus-sales-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SALES ROUTES
# ============================================================

sales_routes:
- local_farm_stall
- egg_sales_stall
- milk_sales_stall
- community_agri_shop
- livestock_market_unit
- neighborhood_direct_sale
- local_market_listing
- cooperative_collection_route


# ============================================================
# 2. FINAL RULE
# ============================================================

Surplus sales
must support micro-business play
without requiring full company scale.
