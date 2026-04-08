# ============================================================
# META CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for meta core structures.

# 2. POLICY RULES

- meta scope, scope binding, and version must be explicit
- active and suspended meta state must be explicit
- hidden meta-core mutation is prohibited
- implicit meta activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing meta scope must reject
- invalid binding or version state must reject
- hidden meta-core mutation must reject

