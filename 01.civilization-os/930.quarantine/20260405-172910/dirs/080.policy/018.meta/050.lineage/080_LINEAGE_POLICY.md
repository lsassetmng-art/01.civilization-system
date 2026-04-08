# ============================================================
# LINEAGE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for lineage structures.

# 2. POLICY RULES

- lineage scope, source references, and rules must be explicit
- active and blocked lineage state must be explicit
- hidden lineage mutation is prohibited
- implicit lineage execution while blocked is prohibited

# 3. FAILURE RULE

- missing lineage scope must reject
- invalid source or rule binding must reject
- hidden lineage mutation must reject

