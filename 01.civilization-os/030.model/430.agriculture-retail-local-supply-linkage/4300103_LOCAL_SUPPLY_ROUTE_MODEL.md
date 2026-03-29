# ============================================================
# LOCAL SUPPLY ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-retail-local-supply-linkage
component: local-supply-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTES
# ============================================================

local_supply_routes:
- household_direct_sale
- producer_direct_contract
- cooperative_collection
- district_market_supply
- city_distribution_route
- retail_direct_intake


# ============================================================
# 2. FINAL RULE
# ============================================================

Local products
must have explicit intake routes into retail.
