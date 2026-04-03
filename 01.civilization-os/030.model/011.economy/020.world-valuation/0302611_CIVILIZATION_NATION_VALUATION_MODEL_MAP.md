# ============================================================
# CIVILIZATION NATION VALUATION MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for nation-level valuation support
inside CivilizationOS world/common valuation.


# ============================================================
# 1. NATION_VALUATION_PROFILE
# ============================================================

purpose:
Store nation-level valuation personality.

core_fields:
- nation_valuation_profile_id
- nation_code
- continent_code
- commercial_value_rank
- residential_value_rank
- industrial_value_rank
- logistics_value_rank
- infrastructure_value_rank
- strategic_value_rank
- prestige_value_rank
- education_value_rank
- maritime_value_rank
- agricultural_value_rank
- redevelopment_value_rank
- flexibility_value_rank
- legacy_distortion_rank
- restriction_pressure_rank
- created_at
- updated_at


# ============================================================
# 2. NATION_VALUATION_BIAS_RULE
# ============================================================

purpose:
Store how nation valuation modifies district/property valuation.

core_fields:
- nation_valuation_bias_rule_id
- nation_code
- target_scope_type
- target_value_axis
- bias_mode
- bias_rank
- summary
- created_at
- updated_at

target_scope_type examples:
- region
- district
- parcel
- building
- unit
- rent_profile

target_value_axis examples:
- commercial_value
- residential_value
- industrial_value
- logistics_value
- infrastructure_value
- strategic_value
- prestige_value
- education_value
- maritime_value
- agricultural_value
- redevelopment_value

bias_mode examples:
- amplify
- soften
- distort
- stabilize
- localize


# ============================================================
# 3. NATION_DISTRICT_ROLE_PROFILE
# ============================================================

purpose:
Store district-role emphasis by nation.

core_fields:
- nation_district_role_profile_id
- nation_code
- district_role_code
- role_value_rank
- summary
- created_at
- updated_at

district_role_code examples:
- capital_core
- financial_core
- education_core
- industrial_belt
- military_zone
- port_zone
- agricultural_zone
- redevelopment_zone
- mixed_use_zone


# ============================================================
# 4. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum nation valuation support set.

Core summary:

- nation valuation profile stores macro nation bias
- nation valuation bias rule adjusts downstream local value
- district role profile lets each nation emphasize different district types
