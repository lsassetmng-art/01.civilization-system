# ============================================================
# PRICING AND RATING CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: pricing-and-rating-calculation-model
component: pricing-and-rating-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the model posture
for land pricing, stock pricing,
bond pricing, FX rate calculation,
and sovereign / corporate rating.


# ============================================================
# 2. LAND PRICE ENTITY
# ============================================================

LandPriceCalculation

Recommended fields:

- land_price_calculation_id
- subject_scope_type
- subject_scope_id
- base_land_price
- location_factor
- demand_factor
- growth_expectation_factor
- infrastructure_factor
- risk_discount_factor
- land_price_value
- land_value_profile_reference where applicable
- recalculated_at


# ============================================================
# 3. STOCK PRICE ENTITY
# ============================================================

StockPriceCalculation

Recommended fields:

- stock_price_calculation_id
- stock_market_scope_id
- stock_id
- eps_value where applicable
- per_multiple where applicable
- expected_earnings
- growth_expectation
- required_return
- stock_price_value
- recalculated_at


# ============================================================
# 4. BOND PRICING ENTITY
# ============================================================

BondPricingCalculation

Recommended fields:

- bond_pricing_calculation_id
- bond_type
- issuer_scope_type
- issuer_scope_id
- face_value
- coupon_value where applicable
- yield_value
- spread_value where applicable
- price_value
- recalculated_at


# ============================================================
# 5. FX RATE ENTITY
# ============================================================

FXRateCalculation

Recommended fields:

- fx_rate_calculation_id
- base_currency_code
- quote_currency_code
- prior_rate
- interest_diff_factor
- inflation_diff_factor
- trade_balance_factor
- capital_flow_factor
- risk_diff_factor
- sentiment_factor
- fx_rate_value
- recalculated_at


# ============================================================
# 6. STATE RATING ENTITY
# ============================================================

StateRatingCalculation

Recommended fields:

- state_rating_calculation_id
- state_id
- fiscal_strength
- gdp_growth_strength
- external_balance_strength
- currency_stability
- political_stability
- reserve_strength
- debt_burden
- war_risk
- epidemic_risk
- famine_risk
- rating_score
- rating_band
- recalculated_at


# ============================================================
# 7. COMPANY RATING ENTITY
# ============================================================

CompanyRatingCalculation

Recommended fields:

- company_rating_calculation_id
- company_id
- profitability
- cash_flow_strength
- liquidity_strength
- market_position
- governance_strength
- leverage
- earnings_volatility
- industry_risk
- country_risk
- rating_score
- rating_band
- recalculated_at


# ============================================================
# 8. FINAL RULE
# ============================================================

Pricing and rating calculation models must remain:

- entity-distinct
- factor-readable
- market-compatible
- rating-compatible
