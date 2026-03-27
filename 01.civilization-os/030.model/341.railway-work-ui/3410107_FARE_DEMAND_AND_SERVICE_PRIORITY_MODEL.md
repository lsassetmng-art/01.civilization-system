# ============================================================
# FARE DEMAND AND SERVICE PRIORITY MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: fare-demand-and-service-priority

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FARE FIELDS
# ============================================================

fare_fields:
- base_fare_level
- peak_pricing_supported
- long_distance_discount_supported
- commuter_support_discount
- student_discount
- military_or_state_discount
- freight_tariff_level
- prestige_service_surcharge


# ============================================================
# 2. DEMAND FIELDS
# ============================================================

demand_fields:
- commuter_demand_level
- intercity_demand_level
- freight_demand_level
- seasonal_shift_level
- event_day_shift_level
- political_priority_demand
- frontier_support_demand


# ============================================================
# 3. SERVICE PRIORITY TYPES
# ============================================================

service_priority_types:
- commuter_priority
- freight_priority
- state_priority
- military_priority
- prestige_priority
- frontier_support_priority
- balanced_priority


# ============================================================
# 4. FINAL RULE
# ============================================================

Fare and demand control must expose
the tension between access,
profit, state duty,
and network strain.
