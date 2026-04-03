# ============================================================
# NATION COMPARISON FACILITY METRIC MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-comparison-facility-metric

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMPARISON DIMENSIONS
# ============================================================

comparison_dimensions:
- health_access
- education_access
- commerce_access
- finance_access
- recruitment_access
- transport_access
- market_legibility
- civic_visibility
- infrastructure_score
- national_prestige
- stability_signal


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- nation comparison uses normalized comparison values
- strongest and weakest relative positions should be visible
- facility-driven causes may be summarized, not fully expanded


# ============================================================
# 3. FINAL RULE
# ============================================================

Comparison should show
how facility ecology changes
nation-level outcomes.
