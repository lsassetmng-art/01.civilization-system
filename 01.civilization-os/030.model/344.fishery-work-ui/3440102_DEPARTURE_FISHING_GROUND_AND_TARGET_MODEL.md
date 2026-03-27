# ============================================================
# DEPARTURE FISHING GROUND AND TARGET MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: departure-fishing-ground-and-target

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEPARTURE FIELDS
# ============================================================

departure_fields:
- departure_plan_id
- departure_window
- vessel_assignment
- crew_assignment
- target_species
- target_quantity
- fishing_ground_id
- fuel_requirement
- ice_or_preservation_requirement
- storm_abort_threshold
- return_deadline_rule


# ============================================================
# 2. FISHING GROUND FIELDS
# ============================================================

fishing_ground_fields:
- fishing_ground_id
- ground_distance
- species_profile
- catch_variability
- weather_exposure
- conflict_risk
- sustainability_pressure
- prestige_value
- communal_restriction_supported


# ============================================================
# 3. ACTIONS
# ============================================================

actions:
- approve_departure
- delay_departure
- switch_fishing_ground
- change_target_species
- reduce_target_load
- increase_preservation_support
- restrict_high_risk_ground
- open_emergency_food_support_route


# ============================================================
# 4. FINAL RULE
# ============================================================

Departure planning must expose
the tradeoff between yield,
distance, weather risk,
and return stability.
