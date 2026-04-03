# ============================================================
# HEAD OF STATE ROUTE REPLACEMENT MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: head-of-state-route-replacement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEFAULT REPLACEMENT
# ============================================================

default_replacement:
- head_of_state -> electoral_head_of_state_route


# ============================================================
# 2. GOVERNANCE OVERRIDES
# ============================================================

governance_overrides:
- electoral_democracy -> electoral_head_of_state_route
- constitutional_monarchy -> royal_succession_route
- absolute_monarchy -> royal_succession_route
- military_state -> military_capture_route
- party_socialist_state -> party_control_route
- personalist_dictatorship -> dictator_appointment_route
- federal_republic -> federal_selection_route
- city_league_federation -> federal_selection_route
- technocratic_state -> technocratic_selection_route
- theocratic_state -> party_nomination_route


# ============================================================
# 3. FINAL RULE
# ============================================================

Head of state ascent
must not retain a generic governance_specific_route marker.
