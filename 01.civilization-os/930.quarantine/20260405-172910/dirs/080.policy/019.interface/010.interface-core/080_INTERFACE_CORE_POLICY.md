# ============================================================
# INTERFACE CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for interface core structures.

# 2. POLICY RULES

- interface scope, scope binding, and version must be explicit
- active and suspended interface state must be explicit
- hidden interface-core mutation is prohibited
- implicit interface activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing interface scope must reject
- invalid binding or version state must reject
- hidden interface-core mutation must reject

