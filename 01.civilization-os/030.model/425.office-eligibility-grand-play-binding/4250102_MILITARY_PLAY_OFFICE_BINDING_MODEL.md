# ============================================================
# MILITARY PLAY OFFICE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: military-play-office-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- unit_commander -> military_surface
- base_commander -> military_surface
- logistics_commander -> military_surface
- regional_commander -> military_surface
- general_staff_member -> military_surface
- defense_minister -> military_surface
- supreme_commander -> military_surface
- military_governor -> military_surface
- intelligence_war_command_role -> military_surface


# ============================================================
# 2. FINAL RULE
# ============================================================

Military offices
must bind into military play surfaces
through explicit office types.
