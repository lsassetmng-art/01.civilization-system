# ============================================================
# CITY BUILDER HIGH PRIORITY CANDIDATE ENUM MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: city-builder-high-priority-candidate-enum

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HIGHEST PRIORITY ENUM GROUPS
# ============================================================

highest_priority_enum_groups:
- city_role_type
- city_scale_class
- urban_core_type
- administrative_tier
- district_structure_type
- zoning_profile
- residential_density_type
- commercial_density_type
- industrial_density_type
- transport_hub_type
- road_network_pattern
- rail_connection_type
- station_presence_type
- port_presence_type
- settlement_expansion_mode


# ============================================================
# 2. FINAL RULE
# ============================================================

These enum groups
should be finalized first
because they define
city layout and builder behavior.
