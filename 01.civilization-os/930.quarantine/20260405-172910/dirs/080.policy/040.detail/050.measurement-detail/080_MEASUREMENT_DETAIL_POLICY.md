# ============================================================
# MEASUREMENT DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for measurement detail structures.

# 2. POLICY RULES

- measurement scope, items, and rules must be explicit
- active and revised measurement-detail state must be explicit
- hidden measurement-detail mutation is prohibited
- implicit measurement publication without resolved items/rules is prohibited

# 3. FAILURE RULE

- missing measurement scope must reject
- invalid item or rule binding must reject
- hidden measurement-detail mutation must reject

