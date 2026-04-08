# ============================================================
# TAX
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for taxation.

# 2. OPERATIONAL CONTROLS

- jurisdiction-rule review
- assessment review
- payment-state inspection
- tax audit inspection

# 3. FAILURE OPERATIONS

- missing jurisdiction rule -> reject
- invalid tax base -> block
- unscoped taxation -> fail closed

