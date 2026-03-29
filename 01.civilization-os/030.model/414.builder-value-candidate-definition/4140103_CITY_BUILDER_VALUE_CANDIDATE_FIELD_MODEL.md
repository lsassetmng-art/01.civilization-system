# ============================================================
# CITY BUILDER VALUE CANDIDATE FIELD MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: city-builder-value-candidate-field

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANDIDATE VALUE REQUIRED FIELDS
# ============================================================

candidate_value_required_fields:
- city_role_type
- city_scale_class
- urban_core_type
- administrative_tier
- settlement_pattern_type
- district_structure_type
- city_center_type
- capital_core_type
- prefectural_capital_core_type
- regional_capital_core_type
- civic_core_layout_type
- zoning_profile
- residential_density_type
- commercial_density_type
- industrial_density_type
- mixed_use_type
- greenbelt_policy_type
- transport_hub_type
- road_network_pattern
- rail_connection_type
- station_presence_type
- port_presence_type
- utility_profile_type
- public_order_sensitivity_type
- ideology_district_profile
- media_influence_profile
- redevelopment_pressure_type
- land_value_profile
- settlement_expansion_mode
- slum_risk_profile
- high_income_zone_profile
- industrial_belt_profile
- tourism_city_profile


# ============================================================
# 2. FREE TEXT PREFERRED FIELDS
# ============================================================

free_text_preferred_fields:
- city_display_name
- district_note
- city_identity_summary
- landmark_note
- optional_local_history


# ============================================================
# 3. FINAL RULE
# ============================================================

City Builder
must use explicit candidates
for spatial,
administrative,
and urban-structure defining fields.
