# ============================================================
# CEASEFIRE RESOLUTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for ceasefire and war resolution structures.

# 2. POLICY RULES

- resolution scope, conditions, and terms must be explicit
- active and closed resolution state must be explicit
- hidden ceasefire-resolution mutation is prohibited
- implicit resolution close without explicit terms is prohibited

# 3. FAILURE RULE

- missing resolution scope must reject
- invalid condition or term binding must reject
- hidden ceasefire-resolution mutation must reject

