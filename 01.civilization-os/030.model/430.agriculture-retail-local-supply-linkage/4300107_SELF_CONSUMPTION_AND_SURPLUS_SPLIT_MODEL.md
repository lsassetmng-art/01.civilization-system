# ============================================================
# SELF CONSUMPTION AND SURPLUS SPLIT MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-retail-local-supply-linkage
component: self-consumption-and-surplus-split

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SPLIT ORDER
# ============================================================

split_order:
- self_consumption_first
- reserve_if_needed
- surplus_to_sale
- surplus_to_retail
- surplus_to_cooperative


# ============================================================
# 2. FINAL RULE
# ============================================================

Household and producer output
must distinguish self-consumption from sale surplus.
