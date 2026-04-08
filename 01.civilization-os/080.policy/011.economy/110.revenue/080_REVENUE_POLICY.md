# ============================================================
# REVENUE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for revenues.

# 2. POLICY RULES

- revenue source and allocation scope must be explicit
- settlement reference must preserve revenue identity
- hidden revenue mutation is prohibited
- implicit allocation changes are prohibited

# 3. FAILURE RULE

- missing source scope must reject
- invalid allocation scope must reject
- hidden revenue mutation must reject

