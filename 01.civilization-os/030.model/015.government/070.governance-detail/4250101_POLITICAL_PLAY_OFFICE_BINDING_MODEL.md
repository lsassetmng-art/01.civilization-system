# ============================================================
# POLITICAL PLAY OFFICE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: political-play-office-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- councillor -> political_power_surface
- legislator -> political_power_surface
- mayor -> political_power_surface
- prefectural_governor -> political_power_surface
- regional_governor -> political_power_surface
- minister -> political_power_surface
- prime_minister -> political_power_surface
- head_of_state -> political_power_surface
- regent -> succession_surface
- party_secretary -> political_power_surface
- revolutionary_council_member -> crisis_route_surface


# ============================================================
# 2. FINAL RULE
# ============================================================

Political offices
must bind into political play surfaces
through explicit office types.
