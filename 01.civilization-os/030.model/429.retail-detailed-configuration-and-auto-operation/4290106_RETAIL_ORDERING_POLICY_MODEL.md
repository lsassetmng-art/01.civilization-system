# ============================================================
# RETAIL ORDERING POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-ordering-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POLICIES
# ============================================================

retail_ordering_policies:
- conservative_stock
- balanced_stock
- aggressive_sales_stock
- freshness_priority
- shortage_resilience_priority
- local_supply_priority


# ============================================================
# 2. FINAL RULE
# ============================================================

Ordering policy
must govern stock behavior during auto operation.
