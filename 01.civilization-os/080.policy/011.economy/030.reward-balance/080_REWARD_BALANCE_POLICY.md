# ============================================================
# REWARD BALANCE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reward balances.

# 2. POLICY RULES

- one active balance account per owner/reward type scope
- locked balance accounts must not mutate
- entry ordering must be deterministic
- hidden balance mutation is prohibited

# 3. FAILURE RULE

- missing account must reject
- locked account mutation must reject
- ambiguous delta ordering must reject

