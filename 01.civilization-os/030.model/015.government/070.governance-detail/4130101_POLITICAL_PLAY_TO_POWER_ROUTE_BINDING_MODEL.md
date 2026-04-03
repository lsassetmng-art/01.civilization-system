# ============================================================
# POLITICAL PLAY TO POWER ROUTE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: political-play-to-power-route-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- electoral_democracy -> campaign_politician_route
- constitutional_monarchy -> dynastic_heir_route
- constitutional_monarchy -> campaign_politician_route
- absolute_monarchy -> dynastic_heir_route
- absolute_monarchy -> marriage_into_power_route
- military_state -> decorated_general_route
- military_state -> coup_conspirator_route
- party_socialist_state -> party_operator_route
- personalist_dictatorship -> court_favorite_route
- personalist_dictatorship -> dynastic_heir_route
- federal_republic -> campaign_politician_route
- city_league_federation -> campaign_politician_route
- city_league_federation -> commercial_elite_route
- technocratic_state -> reform_technocrat_route
- theocratic_state -> high_priest_route


# ============================================================
# 2. FINAL RULE
# ============================================================

Political play surfaces
must bind to route families
through governance_type first.
