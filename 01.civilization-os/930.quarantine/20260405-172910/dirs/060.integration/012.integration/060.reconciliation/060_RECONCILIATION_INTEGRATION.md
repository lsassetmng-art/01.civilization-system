# ============================================================
# RECONCILIATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for reconciliation structures.

# 2. INTEGRATION SCOPE

- reconciliation jobs to sync and audit consumers
- reconciliation items and differences to resolution consumers
- reconciliation audit to operations

# 3. INTEGRATION RULES

- reconciliation scope, items, and differences must be explicit before handoff
- resolved reconciliation state must preserve reconciliation identity
- hidden reconciliation mutation must not cross boundary
- ambiguous reconciliation state must fail closed

