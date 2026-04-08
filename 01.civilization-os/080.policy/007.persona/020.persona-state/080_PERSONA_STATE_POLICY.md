# ============================================================
# PERSONA STATE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona state structures.

# 2. POLICY RULES

- state scope, condition state, and mood state must be explicit
- active and frozen state must be explicit
- hidden persona-state mutation is prohibited
- implicit state mutation while frozen is prohibited

# 3. FAILURE RULE

- missing state scope must reject
- invalid condition or mood binding must reject
- hidden persona-state mutation must reject

