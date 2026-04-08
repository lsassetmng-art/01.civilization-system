# ============================================================
# CAREER PROGRESSION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for career progression structures.

# 2. OPERATIONAL CONTROLS

- progression-record review
- event/state review
- result inspection
- progression audit inspection

# 3. FAILURE OPERATIONS

- missing subject or progression scope -> reject
- invalid event or state binding -> block
- hidden progression mutation -> fail closed

