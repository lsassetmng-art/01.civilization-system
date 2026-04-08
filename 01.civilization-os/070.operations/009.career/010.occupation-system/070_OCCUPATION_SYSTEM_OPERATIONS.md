# ============================================================
# OCCUPATION SYSTEM
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for occupation system structures.

# 2. OPERATIONAL CONTROLS

- occupation-definition review
- family/rule review
- active-state inspection
- occupation audit inspection

# 3. FAILURE OPERATIONS

- missing occupation or family scope -> reject
- invalid rule binding -> block
- hidden occupation mutation -> fail closed

