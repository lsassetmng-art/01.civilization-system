# ============================================================
# CIVILIZATION WORLD SCALE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for CivilizationOS world scale
and macro geographic valuation support.


# ============================================================
# 1. CONTINENT_SCALE_PROFILE
# ============================================================

purpose:
Store macro scale baseline for one continent.

core_fields:
- continent_scale_profile_id
- continent_code
- total_area_estimate_km2
- habitable_ratio_rank
- urbanization_ratio_rank
- infrastructure_density_rank
- commercial_concentration_rank
- strategic_restricted_ratio_rank
- agricultural_capacity_rank
- logistics_connectivity_rank
- prestige_concentration_rank
- created_at
- updated_at


# ============================================================
# 2. REGION_SCALE_PROFILE
# ============================================================

purpose:
Store macro scale baseline for one region.

core_fields:
- region_scale_profile_id
- region_code
- continent_code
- region_area_estimate_km2
- habitable_ratio_rank
- urbanization_ratio_rank
- infrastructure_density_rank
- commercial_concentration_rank
- strategic_restricted_ratio_rank
- logistics_connectivity_rank
- prestige_concentration_rank
- created_at
- updated_at


# ============================================================
# 3. DISTRICT_SCALE_PROFILE
# ============================================================

purpose:
Store macro valuation baseline for one district.

core_fields:
- district_scale_profile_id
- district_code
- region_code
- district_rank
- commercial_value_rank
- residential_value_rank
- logistics_value_rank
- infrastructure_value_rank
- strategic_value_rank
- scarcity_value_rank
- safety_value_rank
- prestige_value_rank
- created_at
- updated_at


# ============================================================
# 4. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum macro-geography support set.

Core summary:

- continent scale is first-class
- region scale is second-class
- district scale is valuation-facing
- parcel pricing may build on these later
