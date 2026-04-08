# ============================================================
# CONSTRAINT DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for constraint detail structures.

# 2. POLICY RULES

- constraint scope, items, and rules must be explicit
- active and blocked constraint-detail state must be explicit
- hidden constraint-detail mutation is prohibited
- implicit constraint execution while blocked is prohibited

# 3. FAILURE RULE

- missing constraint scope must reject
- invalid item or rule binding must reject
- hidden constraint-detail mutation must reject

