# ============================================================
# GOVERNMENT CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for government core structures.

# 2. OPERATIONAL CONTROLS

- government-unit review
- authority/term review
- legitimacy/stability review
- government audit inspection

# 3. FAILURE OPERATIONS

- missing government scope -> reject
- incompatible active term overlap -> block
- ambiguous governing authority -> fail closed

