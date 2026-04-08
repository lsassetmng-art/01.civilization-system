# ============================================================
# RECONCILIATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for reconciliation structures.

# 2. OPERATIONAL CONTROLS

- reconciliation-job review
- item/difference review
- active/resolved state inspection
- reconciliation audit inspection

# 3. FAILURE OPERATIONS

- missing reconciliation scope -> reject
- invalid item or difference binding -> block
- hidden reconciliation mutation -> fail closed

