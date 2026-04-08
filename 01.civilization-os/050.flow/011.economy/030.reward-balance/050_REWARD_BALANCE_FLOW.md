# ============================================================
# REWARD BALANCE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reward balance handling.

# 2. TRIGGER

- reward grant
- reward consumption
- balance snapshot cycle
- lock/unlock request

# 3. MAIN FLOW

1. resolve reward_balance_account
2. validate lock state
3. create reward_balance_entry
4. update balance state
5. persist reward_balance_snapshot where required
6. emit audit trace

# 4. FAILURE FLOW

- missing account -> reject
- locked account mutation -> reject
- ambiguous balance delta ordering -> fail closed

# 5. OUTPUT

- balance entry
- balance snapshot
- audit record

