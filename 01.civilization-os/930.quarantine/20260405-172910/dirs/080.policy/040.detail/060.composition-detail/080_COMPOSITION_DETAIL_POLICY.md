# ============================================================
# COMPOSITION DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for composition detail structures.

# 2. POLICY RULES

- composition scope, items, and rules must be explicit
- active and revised composition-detail state must be explicit
- hidden composition-detail mutation is prohibited
- implicit composition publication without resolved items/rules is prohibited

# 3. FAILURE RULE

- missing composition scope must reject
- invalid item or rule binding must reject
- hidden composition-detail mutation must reject

