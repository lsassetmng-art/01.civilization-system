# ============================================================
# DETAIL CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for detail core structures.

# 2. POLICY RULES

- detail scope, scope binding, and version must be explicit
- active and suspended detail state must be explicit
- hidden detail-core mutation is prohibited
- implicit detail activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing detail scope must reject
- invalid binding or version state must reject
- hidden detail-core mutation must reject

