# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for Aerial runtime intervention.

# 2. POLICY RULES

- assistive scope and escalation scope must be explicit
- assistive path must remain distinct from direct control
- hidden undeclared escalation is prohibited
- implicit support-to-control conversion is prohibited

# 3. FAILURE RULE

- missing support context must reject
- invalid escalation scope must reject
- hidden direct control through assistive path must reject

