# ============================================================
# PERSONAL PROFILE POWER ASCENT MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: personal-profile-power-ascent

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PROFILE BLOCKS
# ============================================================

profile_blocks:
- reachable_power_routes
- current_route_progress
- support_base_summary
- legitimacy_summary
- next_requirement_summary
- rival_block_summary


# ============================================================
# 2. RULES
# ============================================================

rules:
- personal profile should show only routes relevant to current nation context
- visible progression should depend on personal trajectory and role
- blocked reasons should identify support, lineage, favor, merit, or authority gaps
- rise-and-fall systems must share the same route truth


# ============================================================
# 3. FINAL RULE
# ============================================================

Personal profile
must show how close the user is
to each reachable power layer.
