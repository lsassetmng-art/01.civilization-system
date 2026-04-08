# ============================================================
# SETTLEMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for settlements.

# 2. POLICY RULES

- settlement batch scope must be explicit
- settlement item membership must be attributable
- reconciliation is mandatory before final closure
- silent discrepancy is prohibited

# 3. FAILURE RULE

- missing batch scope must reject
- invalid item membership must reject
- silent discrepancy must reject

