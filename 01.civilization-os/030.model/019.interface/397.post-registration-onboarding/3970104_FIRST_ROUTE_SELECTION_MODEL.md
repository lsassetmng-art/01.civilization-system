# ============================================================
# FIRST ROUTE SELECTION MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: first-route-selection

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE TARGETS
# ============================================================

route_targets:
- civilization_global_map
- guided_start_surface
- profile_completion_later
- return_to_access_gateway


# ============================================================
# 2. RULES
# ============================================================

rules:
- newly registered normal users should default to civilization_global_map or guided_start_surface
- ordinary login success should also default to civilization_global_map
- CX22073JW story routing is not implied by ordinary registration
- route choice may depend on onboarding policy
- route choice must remain explicit and stable


# ============================================================
# 3. FINAL RULE
# ============================================================

First route selection
must clarify that the standard next destination
for normal access
is the Civilization Global Map.
