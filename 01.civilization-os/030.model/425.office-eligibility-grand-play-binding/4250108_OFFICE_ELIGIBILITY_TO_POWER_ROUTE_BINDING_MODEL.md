# ============================================================
# OFFICE ELIGIBILITY TO POWER ROUTE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: office-eligibility-to-power-route-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- legislator -> campaign_politician_route
- mayor -> campaign_politician_route
- prefectural_governor -> campaign_politician_route
- regional_governor -> campaign_politician_route
- minister -> parliamentary_coalition_route
- prime_minister -> parliamentary_coalition_route
- head_of_state -> electoral_head_of_state_route
- regent -> bloodline_route
- crown_heir -> bloodline_route
- defense_minister -> military_command_route
- supreme_commander -> military_heroism_route
- party_secretary -> party_patronage_route
- revolutionary_council_member -> revolutionary_capture_route


# ============================================================
# 2. FINAL RULE
# ============================================================

Office progression
must remain linked
to national power routes.
