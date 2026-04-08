# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for famine and shortage calculation.

# 2. OPERATIONAL CONTROLS

- supply-state review
- threshold review
- famine risk monitoring
- shortage impact review

# 3. FAILURE OPERATIONS

- missing supply state -> reject
- ambiguous threshold -> block
- inconsistent impact scope -> fail closed

