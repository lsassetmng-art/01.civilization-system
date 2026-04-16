# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY INTEGRATION FORMAL DESIGN
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal integration meaning of forecast references
used by ProductPortfolioManager.

integration_principles:
- forecast integration is advisory-reference-first
- fetched forecast values must remain source-attributed
- confidence and timing metadata are first-class
- forecast values may be stored for judgment context,
  but forecast-generation authority remains external
- forecast integration failure must not fabricate values

# ============================================================
# 1. REQUIRED FORECAST REFERENCE METADATA
# ============================================================

required_forecast_reference_metadata:
- forecast_scope_type
- forecast_period_type
- forecast_period_start
- forecast_period_end
- forecast_quantity where available
- forecast_sales_amount where available
- forecast_currency_code where monetary
- confidence_level where available
- forecast_source_code
- forecast_generated_at where available
- fetched_at

# ============================================================
# 2. FORECAST REFERENCE USE CASES
# ============================================================

forecast_reference_use_cases:
- show forecast in product detail
- compare forecast and actual context
- support forecast-gap alerts
- support review-session discussion
- support proposal reasoning
- support score interpretation where policy allows

# ============================================================
# 3. FAILURE RULES
# ============================================================

failure_rules:
- missing forecast must not be treated as zero forecast
- weak confidence must not be hidden if confidence metadata exists
- stale forecast should not appear identical to fresh forecast where timing matters
- partial forecast context should remain visibly partial when relevant

# ============================================================
# 4. FUTURE INTEGRATION EVOLUTION RULE
# ============================================================

future_integration_evolution_rule:
If richer forecast integration is later added,
it must still preserve:
- advisory meaning
- source attribution
- confidence visibility
- time visibility
- separation from final decision ownership

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast integration in ProductPortfolioManager
must remain advisory,
metadata-rich,
and explicit in its boundaries.
