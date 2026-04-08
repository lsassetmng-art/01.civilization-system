# ============================================================
# UNIT DEPLOYMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for unit deployment structures.

# 2. POLICY RULES

- deployment scope, unit references, and rules must be explicit
- active and blocked deployment state must be explicit
- hidden unit-deployment mutation is prohibited
- implicit deployment execution while blocked is prohibited

# 3. FAILURE RULE

- missing deployment or unit scope must reject
- invalid unit or rule binding must reject
- hidden unit-deployment mutation must reject

