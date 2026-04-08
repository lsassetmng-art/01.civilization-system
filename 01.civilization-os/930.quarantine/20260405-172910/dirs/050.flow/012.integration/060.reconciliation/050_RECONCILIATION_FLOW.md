# ============================================================
# RECONCILIATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reconciliation handling.

# 2. TRIGGER

- reconciliation job start
- reconciliation item comparison
- difference resolution update
- reconciliation close request

# 3. MAIN FLOW

1. create or resolve reconciliation_job
2. bind reconciliation_item set
3. detect and bind reconciliation_difference set
4. validate reconciliation scope and difference consistency
5. persist reconciliation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing reconciliation scope -> reject
- invalid item or difference binding -> reject
- hidden reconciliation mutation -> fail closed

# 5. OUTPUT

- reconciliation job state
- item/difference state
- audit record

