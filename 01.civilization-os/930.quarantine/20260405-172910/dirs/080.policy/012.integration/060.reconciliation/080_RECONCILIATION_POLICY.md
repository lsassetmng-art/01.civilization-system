# ============================================================
# RECONCILIATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reconciliation structures.

# 2. POLICY RULES

- reconciliation scope, items, and differences must be explicit
- active and resolved reconciliation state must be explicit
- hidden reconciliation mutation is prohibited
- implicit reconciliation close without explicit difference resolution is prohibited

# 3. FAILURE RULE

- missing reconciliation scope must reject
- invalid item or difference binding must reject
- hidden reconciliation mutation must reject

