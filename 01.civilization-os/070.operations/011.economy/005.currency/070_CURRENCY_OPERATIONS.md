# ============================================================
# CURRENCY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for currency structures.

# 2. OPERATIONAL CONTROLS

- currency definition review
- rate review
- freeze/unfreeze review
- currency audit inspection

# 3. FAILURE OPERATIONS

- duplicate active currency code -> reject and alert
- ambiguous active rate -> block usage
- frozen currency use -> reject
- invalid scope binding -> fail closed

