# ============================================================
# CLASSIFICATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for classification structures.

# 2. POLICY RULES

- classification scope, target references, and rules must be explicit
- active and revised classification state must be explicit
- hidden classification mutation is prohibited
- implicit classification publication without resolved target/rule is prohibited

# 3. FAILURE RULE

- missing classification scope must reject
- invalid target or rule binding must reject
- hidden classification mutation must reject

