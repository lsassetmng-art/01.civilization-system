# ============================================================
# ATTRIBUTE DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for attribute detail structures.

# 2. POLICY RULES

- attribute scope, items, and rules must be explicit
- active and revised attribute-detail state must be explicit
- hidden attribute-detail mutation is prohibited
- implicit attribute publication without resolved items/rules is prohibited

# 3. FAILURE RULE

- missing attribute scope must reject
- invalid item or rule binding must reject
- hidden attribute-detail mutation must reject

