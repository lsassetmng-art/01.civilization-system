# ============================================================
# POWER ACQUISITION ROUTE TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-route-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE TYPES
# ============================================================

route_types:
- public_election_route
- parliamentary_coalition_route
- military_heroism_route
- military_command_route
- party_patronage_route
- ruler_favor_route
- bloodline_route
- marriage_alliance_route
- technocratic_merit_route
- theocratic_legitimacy_route
- coup_route
- revolutionary_capture_route


# ============================================================
# 2. FINAL RULE
# ============================================================

Power acquisition routes
must be explicitly typed
before weights and nation differences are applied.
