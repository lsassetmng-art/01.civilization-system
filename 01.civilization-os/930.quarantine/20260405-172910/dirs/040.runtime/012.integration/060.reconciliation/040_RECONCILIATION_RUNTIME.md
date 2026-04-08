# ============================================================
# RECONCILIATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for reconciliation structures.

# 2. RUNTIME STATE

- active reconciliation-job state
- reconciliation-item resolution state
- difference resolution state
- active/resolved reconciliation state

# 3. EXECUTION RULES

- reconciliation scope, items, and differences must resolve before publication
- resolved state must preserve reconciliation identity
- active and resolved states must be explicit
- hidden reconciliation mutation is prohibited

# 4. FAILURE HANDLING

- missing reconciliation scope -> reject
- invalid item or difference binding -> reject
- hidden reconciliation mutation -> fail closed

