# ============================================================
# REWARD GRANT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for reward grants.

# 2. OPERATIONAL CONTROLS

- approval-state review
- source/target review
- grant application review
- grant audit inspection

# 3. FAILURE OPERATIONS

- missing target -> reject
- unauthorized grant -> block
- ambiguous approval/applied state -> fail closed

