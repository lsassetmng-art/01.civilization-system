# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY ARCHITECTURE FORMAL DESIGN
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary and interpretation role
of forecast references inside ProductPortfolioManager.

architecture_principles:
- forecast enters the application as reference context
- forecast must remain distinguishable from ERP fact and application judgment
- forecast confidence, generation time, and scope must remain visible
- forecast may influence comparison and prioritization
- forecast should not collapse into hidden automation of final business actions

# ============================================================
# 1. FORECAST ARCHITECTURAL ROLE
# ============================================================

forecast_architectural_role:
- support demand-oriented interpretation
- support comparison of forecast vs actual context
- support risk and opportunity discussion
- support alert generation where policy allows
- support review-session context
- support proposal reasoning context

forecast_is_not:
- not a replacement for ERP truth
- not a final judgment record
- not an approval result
- not a guarantee of future business outcome

# ============================================================
# 2. FORECAST REFERENCE OBJECTS
# ============================================================

forecast_reference_objects:
- forecast scope type
- forecast period type
- forecast period start
- forecast period end
- forecast quantity
- forecast sales amount
- forecast currency code
- confidence level
- forecast source code
- forecast generated at
- fetched at

# ============================================================
# 3. ARCHITECTURAL DATA FLOW
# ============================================================

architectural_data_flow:
1. fetch forecast reference from forecast-capable source
2. store or attach forecast reference context
3. compare forecast with KPI or actual context where relevant
4. expose forecast context in detail, comparison, alert, and review surfaces
5. preserve advisory meaning in interpretation and history

# ============================================================
# 4. SOURCE VISIBILITY REQUIREMENTS
# ============================================================

source_visibility_requirements:
- forecast-derived values must be visually distinguishable from ERP-derived values
- confidence should be visible where supported
- generated_at and fetched_at context should be available where supported
- forecast should be presented as advisory context in UI and process language

# ============================================================
# 5. FORBIDDEN ARCHITECTURAL PATTERNS
# ============================================================

forbidden_patterns:
- silently converting forecast into final classification
- silently converting forecast into approved proposal
- presenting forecast as if it were ERP fact
- ignoring forecast confidence while still implying deterministic certainty

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast boundary architecture in ProductPortfolioManager
must preserve advisory interpretation,
source clarity,
confidence visibility,
and explicit separation from fact and final judgment.
