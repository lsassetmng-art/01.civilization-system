# ============================================================
# WORLD TRANSITION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world transitions.

# 2. POLICY RULES

- from/to state, triggers, and guards must be explicit
- active and blocked transition state must be explicit
- hidden world-transition mutation is prohibited
- implicit transition execution while blocked is prohibited

# 3. FAILURE RULE

- missing from/to state must reject
- invalid trigger or guard binding must reject
- hidden world-transition mutation must reject

