# ============================================================
# POWER ACQUISITION ROUTE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase1
component: power-acquisition-route-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

power_acquisition_route_enum:
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
# 2. RULE
# ============================================================

A nation may expose multiple routes,
but route availability and weight
must depend on governance defaults
plus nation-specific override.


# ============================================================
# 3. FINAL RULE
# ============================================================

Power acquisition route types
define how users may attempt
to reach national power.
