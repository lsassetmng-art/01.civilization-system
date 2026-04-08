# ============================================================
# WORLD CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world core structures.

# 2. POLICY RULES

- world scope, scope binding, and version must be explicit
- active and suspended world state must be explicit
- hidden world-core mutation is prohibited
- implicit world activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing world scope must reject
- invalid binding or version state must reject
- hidden world-core mutation must reject

