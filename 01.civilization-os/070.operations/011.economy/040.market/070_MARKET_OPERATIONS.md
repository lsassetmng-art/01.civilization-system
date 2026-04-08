# ============================================================
# MARKET
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for market systems.

# 2. OPERATIONAL CONTROLS

- market scope review
- listing/order review
- trade matching review
- market audit inspection

# 3. FAILURE OPERATIONS

- invalid market scope -> reject
- non-tradable item -> block
- cross-market trade attempt -> fail closed

