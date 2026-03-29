# ============================================================
# NATION SPECIFIC POWER ROUTE OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: nation-specific-power-route-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- enabled_flag
- primary_route_override_set
- secondary_route_override_set
- boosted_weight_dimensions
- reduced_weight_dimensions
- blocked_route_set
- legitimacy_special_rule_set
- succession_special_rule_set
- crisis_transition_rule_set


# ============================================================
# 2. PURPOSE
# ============================================================

purpose:
Allow existing nations
to diverge from governance type defaults
without redefining the governance type itself.


# ============================================================
# 3. FINAL RULE
# ============================================================

Existing nation behavior
must resolve from governance default
plus explicit nation override.
