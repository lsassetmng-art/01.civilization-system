# ============================================================
# POWER ACQUISITION PLAY ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-play-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PLAY ROUTES
# ============================================================

play_routes:
- campaign_politician_route
- decorated_general_route
- party_operator_route
- court_favorite_route
- dynastic_heir_route
- marriage_into_power_route
- reform_technocrat_route
- high_priest_route
- coup_conspirator_route
- revolutionary_leader_route


# ============================================================
# 2. RULES
# ============================================================

rules:
- not all routes are available in all nations
- route availability depends on governance_type and nation override
- some routes may be hidden until legitimacy or authority thresholds are met
- extra-legal routes must carry legitimacy and stability cost


# ============================================================
# 3. FINAL RULE
# ============================================================

Political play
must feel different by nation
because reachable power routes differ by nation.
