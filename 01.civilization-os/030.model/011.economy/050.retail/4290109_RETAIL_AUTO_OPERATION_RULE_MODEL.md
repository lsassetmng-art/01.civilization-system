# ============================================================
# RETAIL AUTO OPERATION RULE MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-auto-operation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AUTO TASKS
# ============================================================

auto_tasks:
- normal_sales_processing
- standard_restocking
- time_band_adjustment
- standard_staff_allocation
- routine_discounting
- shortage_substitution
- regular_cleaning_execution


# ============================================================
# 2. AUTO INPUTS
# ============================================================

auto_inputs:
- facility_type
- location_profile
- district_demand
- time_band
- day_type
- season
- nation_rule_effect
- local_supply_state
- staffing_policy
- shelf_policy
- ordering_policy
- pricing_policy
- sanitation_policy


# ============================================================
# 3. FINAL RULE
# ============================================================

Auto operation
must read explicit configuration
and world conditions.
