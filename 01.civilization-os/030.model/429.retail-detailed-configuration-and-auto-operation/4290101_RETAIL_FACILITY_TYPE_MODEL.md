# ============================================================
# RETAIL FACILITY TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-facility-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY TYPES
# ============================================================

retail_facility_types:
- convenience_store
- small_grocery
- general_store
- specialty_food_store
- farm_direct_shop
- egg_milk_shop
- local_market_stall
- co_op_store
- pharmacy_misc_store
- station_kiosk


# ============================================================
# 2. FINAL RULE
# ============================================================

Retail management rules
must distinguish facility type.
