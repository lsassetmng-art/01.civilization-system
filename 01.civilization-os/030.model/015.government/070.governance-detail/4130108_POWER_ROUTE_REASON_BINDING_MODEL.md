# ============================================================
# POWER ROUTE REASON BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: power-route-reason-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- insufficient_public_support -> campaign_politician_route
- insufficient_military_support -> decorated_general_route
- insufficient_party_favor -> party_operator_route
- insufficient_ruler_favor -> court_favorite_route
- insufficient_bloodline_rank -> dynastic_heir_route
- insufficient_marriage_link -> marriage_into_power_route
- insufficient_governance_merit -> reform_technocrat_route
- insufficient_religious_legitimacy -> high_priest_route
- coup_route_high_risk -> coup_conspirator_route
- revolutionary_route_high_instability -> revolutionary_capture_route


# ============================================================
# 2. FINAL RULE
# ============================================================

Reason binding
must let the UI explain
the exact failure or risk
for each route.
