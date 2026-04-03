# ============================================================
# NATION OVERVIEW FACILITY METRIC CARD MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-overview-facility-metric-card

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CARD CONTENT
# ============================================================

card_content:
- health_access
- education_access
- commerce_access
- finance_access
- transport_access
- market_legibility
- infrastructure_score


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- nation overview uses compact cards
- only strongest and weakest drivers may be shown
- cards may link to expanded nation detail


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation overview should remain concise
while still showing facility-derived state.
