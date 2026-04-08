# ============================================================
# WORLD ENVIRONMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world environment structures.

# 2. POLICY RULES

- environment scope, factors, and rules must be explicit
- active and revised environment state must be explicit
- hidden environment mutation is prohibited
- implicit environment publication without resolved factors/rules is prohibited

# 3. FAILURE RULE

- missing environment scope must reject
- invalid factor or rule binding must reject
- hidden environment mutation must reject

