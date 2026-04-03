# ============================================================
# POWER ROUTE VISIBILITY STATE MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: power-route-visibility-state

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- hidden
- teaser_only
- locked_with_reason
- available_preparation
- available_execution
- acquired
- crisis_opened


# ============================================================
# 2. RULES
# ============================================================

rules:
- teaser_only may show that a route exists in this nation
- locked_with_reason must explain the missing requirement
- available_preparation may allow support-building before candidacy or claim
- available_execution means the formal attempt may be made
- crisis_opened indicates emergency or instability unlocked the route
- acquired indicates current office or power has already been obtained


# ============================================================
# 3. FINAL RULE
# ============================================================

Visibility must distinguish
route existence,
route readiness,
and route activation.
