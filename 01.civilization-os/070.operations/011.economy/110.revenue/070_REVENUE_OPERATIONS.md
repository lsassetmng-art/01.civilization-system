# ============================================================
# REVENUE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for revenues.

# 2. OPERATIONAL CONTROLS

- source review
- allocation review
- settlement-reference review
- revenue audit inspection

# 3. FAILURE OPERATIONS

- missing source scope -> reject
- invalid allocation scope -> block
- hidden revenue mutation -> fail closed

