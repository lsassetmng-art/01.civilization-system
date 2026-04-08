# ============================================================
# WORLD STATE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world state structures.

# 2. POLICY RULES

- state scope, condition state, and metric state must be explicit
- active and frozen state must be explicit
- hidden world-state mutation is prohibited
- implicit state mutation while frozen is prohibited

# 3. FAILURE RULE

- missing state scope must reject
- invalid condition or metric binding must reject
- hidden world-state mutation must reject

