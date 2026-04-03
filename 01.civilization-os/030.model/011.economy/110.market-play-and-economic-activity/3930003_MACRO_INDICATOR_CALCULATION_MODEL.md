# ============================================================
# MACRO INDICATOR CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: macro-indicator-calculation-model
component: macro-indicator-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the model posture
for unemployment, consumption propensity,
GDP, machinery orders,
and related macro-indicator calculation.


# ============================================================
# 2. UNEMPLOYMENT ENTITY
# ============================================================

UnemploymentCalculation

Recommended fields:

- unemployment_calculation_id
- subject_scope_type
- subject_scope_id
- employed_count
- unemployed_count
- labor_force_count
- unemployment_rate
- recalculated_at


# ============================================================
# 3. CONSUMPTION PROPENSITY ENTITY
# ============================================================

ConsumptionPropensityCalculation

Recommended fields:

- consumption_propensity_calculation_id
- subject_scope_type
- subject_scope_id
- consumption_value
- disposable_income_value
- apc_value
- mpc_value where applicable
- confidence_factor where applicable
- recalculated_at


# ============================================================
# 4. GDP ENTITY
# ============================================================

GDPCalculation

Recommended fields:

- gdp_calculation_id
- subject_scope_type
- subject_scope_id
- consumption_component
- investment_component
- government_component
- export_component
- import_component
- gdp_value
- recalculated_at


# ============================================================
# 5. MACHINERY ORDER ENTITY
# ============================================================

MachineryOrderCalculation

Recommended fields:

- machinery_order_calculation_id
- subject_scope_type
- subject_scope_id
- base_demand
- capacity_expansion_factor
- profit_expectation_factor
- interest_rate_factor
- confidence_factor
- machinery_order_value
- recalculated_at


# ============================================================
# 6. FINAL RULE
# ============================================================

Macro-indicator calculation models must remain:

- indicator-distinct
- factor-readable
- macro-compatible
- period-aware
