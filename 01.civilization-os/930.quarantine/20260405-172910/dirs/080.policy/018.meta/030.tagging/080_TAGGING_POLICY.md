# ============================================================
# TAGGING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for tagging structures.

# 2. POLICY RULES

- tagging scope, tag items, and rules must be explicit
- active and blocked tagging state must be explicit
- hidden tagging mutation is prohibited
- implicit tagging execution while blocked is prohibited

# 3. FAILURE RULE

- missing tagging scope must reject
- invalid item or rule binding must reject
- hidden tagging mutation must reject

