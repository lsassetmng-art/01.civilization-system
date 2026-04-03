# ============================================================
# CORE HOUSEHOLD BURDEN INDICATOR MODEL
# ============================================================

status: canonical
layer: model
scope: household-economy-and-cost-burden-seed
component: core-household-burden-indicator

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE INDICATORS
# ============================================================

core_indicators:
- tax_burden_tendency
- rent_burden_tendency
- ownership_housing_burden_tendency
- food_cost_burden_tendency
- transport_cost_burden_tendency
- education_cost_burden_tendency
- medical_cost_burden_tendency
- childcare_cost_burden_tendency
- eldercare_cost_burden_tendency
- disability_support_cost_burden_tendency
- household_savings_difficulty_tendency
- debt_dependency_tendency
- family_formation_cost_pressure_tendency
- urban_cost_gap_tendency


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

Initial burden indicators are directional posture values,
not yet hard numeric simulation outputs.
