# ============================================================
# CORE MOBILITY CULTURE AXIS MODEL
# ============================================================

status: canonical
layer: model
scope: mobility-walking-rail-car-ship-and-distance-sense-seed
component: core-mobility-culture-axis

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE AXES
# ============================================================

core_axes:
- walking_baseline_tendency
- short_distance_walk_acceptance_tendency
- rail_reliance_tendency
- car_reliance_tendency
- ship_ferry_reliance_tendency
- public_transport_trust_tendency
- long_commute_tolerance_tendency
- long_distance_trip_normalization_tendency
- distance_compression_tendency
- weather_sensitive_mobility_tendency
- schedule_dependent_mobility_tendency
- class_mobility_gap_tendency


# ============================================================
# 2. VALUE STYLE
# ============================================================

value_style:
- very_low
- low
- medium
- high
- very_high


# ============================================================
# 3. FINAL RULE
# ============================================================

These are directional mobility-culture seed values,
not route-level timetables.
