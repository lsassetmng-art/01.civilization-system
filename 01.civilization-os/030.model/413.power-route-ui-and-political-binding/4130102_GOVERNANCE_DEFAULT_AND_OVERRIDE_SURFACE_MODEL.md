# ============================================================
# GOVERNANCE DEFAULT AND OVERRIDE SURFACE MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: governance-default-and-override-surface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- governance_type_summary
- nation_character_type_summary
- default_power_route_summary
- nation_override_route_summary
- final_effective_route_summary
- boosted_weight_summary
- blocked_route_summary


# ============================================================
# 2. RULES
# ============================================================

rules:
- governance default must be shown separately from override
- unchanged fields may be collapsed in simple mode
- changed route availability must be highlighted
- boosted and reduced dimensions should be inspectable
- final effective route set must be explicitly computed


# ============================================================
# 3. FINAL RULE
# ============================================================

Users must understand
what comes from governance default
and what comes from nation override.
