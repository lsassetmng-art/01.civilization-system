# ============================================================
# REWARD BALANCE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for reward balances.

# 2. OPERATIONAL CONTROLS

- balance-account review
- lock-state inspection
- entry/snapshot review
- balance audit inspection

# 3. FAILURE OPERATIONS

- missing account -> reject
- locked account mutation -> block
- ambiguous delta order -> fail closed

