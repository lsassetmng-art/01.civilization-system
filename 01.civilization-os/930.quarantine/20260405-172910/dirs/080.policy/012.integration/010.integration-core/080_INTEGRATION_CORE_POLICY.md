# ============================================================
# INTEGRATION CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for integration core structures.

# 2. POLICY RULES

- integration scope, endpoint set, and contract set must be explicit
- active and suspended integration state must be explicit
- hidden integration-core mutation is prohibited
- implicit integration activation without resolved endpoint/contract is prohibited

# 3. FAILURE RULE

- missing integration scope must reject
- invalid endpoint or contract binding must reject
- hidden integration-core mutation must reject

