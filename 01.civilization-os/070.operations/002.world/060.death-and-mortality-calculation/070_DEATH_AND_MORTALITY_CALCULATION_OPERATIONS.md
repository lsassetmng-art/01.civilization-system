# ============================================================
# DEATH AND MORTALITY CALCULATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mortality calculation.

# 2. OPERATIONAL CONTROLS

- mortality profile review
- aggregate review
- regional severity monitoring
- impact publication review

# 3. FAILURE OPERATIONS

- missing profile -> reject
- inconsistent aggregate -> block
- ambiguous severity -> fail closed

