# ============================================================
# REWARD BALANCE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for reward balances.

# 2. INFRASTRUCTURE SCOPE

- account storage
- entry/snapshot persistence
- lock-state persistence
- balance audit sink

# 3. INFRASTRUCTURE RULES

- active account state must be durably resolvable
- entry and snapshot order must remain durable
- lock state must persist before mutation decisions
- infrastructure ambiguity must fail closed

