# ============================================================
# CORE SOCIAL STAT INDICATOR MODEL
# ============================================================

status: canonical
layer: model
scope: social-statistics-seed
component: core-social-stat-indicator

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE INDICATORS
# ============================================================

core_indicators:
- crude_birth_rate
- fertility_rate_tendency
- marriage_rate_tendency
- divorce_rate_tendency
- first_marriage_age_tendency
- first_childbirth_age_tendency
- unemployment_rate_tendency
- unstable_employment_rate_tendency
- poverty_rate_tendency
- household_fragility_rate_tendency
- disability_support_pressure_tendency
- eldercare_pressure_tendency
- inequality_visibility_tendency
- social_mobility_tendency


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

Initial statistics are directional posture values,
not yet hard numeric simulation outputs.
