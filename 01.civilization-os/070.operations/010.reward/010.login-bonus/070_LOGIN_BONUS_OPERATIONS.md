# ============================================================
# LOGIN BONUS
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for login bonus systems.

# 2. OPERATIONAL CONTROLS

- campaign review
- claim-state review
- reset-rule review
- login-bonus audit inspection

# 3. FAILURE OPERATIONS

- missing active campaign -> reject
- duplicate same-day claim -> block
- ambiguous reset state -> fail closed

