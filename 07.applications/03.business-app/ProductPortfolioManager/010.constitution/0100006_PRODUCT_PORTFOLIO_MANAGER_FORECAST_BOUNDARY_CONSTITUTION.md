# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional boundary between
ProductPortfolioManager and forecast-capable systems.

constitutional_principles:
- forecast remains advisory reference
- forecast is not formal ERP truth
- forecast is not final portfolio judgment
- forecast may inform review, scoring interpretation, alerting, and proposals
- forecast confidence and timing matter
- forecast reference must remain explicitly source-attributed

# ============================================================
# 1. FORECAST-SIDE AUTHORITY
# ============================================================

forecast_side_authority:
- forecast generation logic
- model identity or source identity where exposed
- forecast-period interpretation
- forecast confidence production
- forecast-produced quantity or sales expectations

# ============================================================
# 2. APPLICATION-SIDE AUTHORITY
# ============================================================

application_side_authority:
- forecast reference storage for judgment support
- forecast visibility in product detail and comparison
- forecast-informed alerting where policy allows
- forecast-informed score interpretation where policy allows
- proposal and review interpretation using forecast context
- audit/history of forecast-relevant application actions

# ============================================================
# 3. CONSTITUTIONAL BOUNDARY RULES
# ============================================================

boundary_rules:
- forecast reference does not become ERP truth
- forecast reference does not silently become final classification
- forecast reference does not silently approve a proposal
- weak-confidence forecast should not be treated as deterministic truth
- forecast-derived context must remain visibly advisory

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat forecast systems
as advisory reference providers,
not as hidden final decision engines.
