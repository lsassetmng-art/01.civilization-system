# ============================================================
# MODE CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode core structures.

# 2. POLICY RULES

- mode scope, scope binding, and version must be explicit
- active and suspended mode state must be explicit
- hidden mode-core mutation is prohibited
- implicit mode activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing mode scope must reject
- invalid binding or version state must reject
- hidden mode-core mutation must reject

