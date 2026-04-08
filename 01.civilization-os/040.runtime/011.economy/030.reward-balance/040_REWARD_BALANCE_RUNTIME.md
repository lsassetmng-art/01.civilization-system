# ============================================================
# REWARD BALANCE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for reward balances.

# 2. RUNTIME STATE

- active balance account state
- lock-state validation
- entry application state
- snapshot publication state

# 3. EXECUTION RULES

- locked account must block mutation
- entry ordering must be deterministic
- snapshot must reflect persisted balance state
- one owner/reward-type account per active scope

# 4. FAILURE HANDLING

- missing account -> reject
- locked account mutation -> reject
- ambiguous delta ordering -> fail closed

