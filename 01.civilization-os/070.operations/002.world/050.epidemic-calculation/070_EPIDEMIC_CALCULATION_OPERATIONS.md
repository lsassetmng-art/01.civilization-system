# ============================================================
# EPIDEMIC CALCULATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for epidemic calculation.

# 2. OPERATIONAL CONTROLS

- epidemic profile review
- infection-state monitoring
- wave-state review
- impact publication review

# 3. FAILURE OPERATIONS

- missing profile -> reject
- ambiguous wave state -> block
- inconsistent region/type scope -> fail closed

