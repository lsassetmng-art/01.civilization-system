# ============================================================
# INTERVIEW
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for interview structures.

# 2. OPERATIONAL CONTROLS

- interview-session review
- stage/participant review
- result inspection
- interview audit inspection

# 3. FAILURE OPERATIONS

- missing session scope -> reject
- invalid stage or participant binding -> block
- hidden interview-result mutation -> fail closed

