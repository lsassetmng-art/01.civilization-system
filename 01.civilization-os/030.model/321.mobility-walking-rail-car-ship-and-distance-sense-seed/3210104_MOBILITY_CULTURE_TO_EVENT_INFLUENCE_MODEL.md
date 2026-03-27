# ============================================================
# MOBILITY CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: mobility-walking-rail-car-ship-and-distance-sense-seed
component: mobility-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- walking_baseline_tendency modifies neighborhood-life and short-range access events
- short_distance_walk_acceptance_tendency modifies daily convenience and local outing events
- rail_reliance_tendency modifies school, work, and intercity commuting stability events
- car_reliance_tendency modifies road dependence, fuel burden, and private access events
- ship_ferry_reliance_tendency modifies island linkage and weather-sensitive interruption events
- public_transport_trust_tendency modifies scheduling confidence and mobility planning events
- long_commute_tolerance_tendency modifies housing-work separation and fatigue events
- long_distance_trip_normalization_tendency modifies travel, relocation, and intercity relationship events
- distance_compression_tendency modifies perceived opportunity range and social reach events
- weather_sensitive_mobility_tendency modifies seasonal isolation and delay events
- schedule_dependent_mobility_tendency modifies lateness, missed-connection, and routine stress events
- class_mobility_gap_tendency modifies unequal access to work, school, leisure, and safety events


# ============================================================
# 2. FINAL RULE
# ============================================================

Mobility-culture indicators must be usable
as modifiers for labor, family, school, risk, and city-access events.
