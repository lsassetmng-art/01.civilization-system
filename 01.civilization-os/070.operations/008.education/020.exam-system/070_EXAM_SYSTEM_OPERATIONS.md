# ============================================================
# EXAM SYSTEM
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for exam system structures.

# 2. OPERATIONAL CONTROLS

- exam-definition review
- session/attempt review
- result inspection
- exam audit inspection

# 3. FAILURE OPERATIONS

- missing exam scope -> reject
- invalid session or attempt binding -> block
- hidden result mutation -> fail closed

