# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: economic-and-financial-calculation-model
component: economic-and-financial-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the shared model posture
for economic, pricing, rating,
and macro-indicator calculation.


# ============================================================
# 2. SHARED CALCULATION CONCEPTS
# ============================================================

Representative shared model concepts include:

- subject_scope_type
- subject_scope_id
- calculation_period
- factor_summary
- base_value
- calculated_value
- trend_direction
- recalculated_at
- notes


# ============================================================
# 3. MARKET / RATING / MACRO RELATION
# ============================================================

Market, rating, and macro calculation models
may share factor structures,
but should preserve distinct final entities.

Representative final entities include:

- LandPriceCalculation
- StockPriceCalculation
- BondPricingCalculation
- FXRateCalculation
- StateRatingCalculation
- CompanyRatingCalculation
- MacroIndicatorCalculation


# ============================================================
# 4. FINAL RULE
# ============================================================

Economic and financial calculation models must remain:

- scope-aware
- factor-readable
- period-aware
- compatible with lower existing market assets
