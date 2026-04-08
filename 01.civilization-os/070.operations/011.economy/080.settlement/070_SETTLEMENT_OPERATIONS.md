# ============================================================
# SETTLEMENT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for settlements.

# 2. OPERATIONAL CONTROLS

- batch/item review
- result publication review
- reconciliation inspection
- settlement audit inspection

# 3. FAILURE OPERATIONS

- missing batch scope -> reject
- invalid item membership -> block
- silent discrepancy -> fail closed

