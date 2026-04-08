# ============================================================
# REWARD BALANCE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for reward balances.

# 2. INTEGRATION SCOPE

- balance entries to account state
- balance snapshots to reporting/consumer systems
- lock state to mutation guards
- balance audit to operations

# 3. INTEGRATION RULES

- lock state must be explicit before mutation handoff
- snapshot publication must preserve account identity and timing
- ambiguous delta order must not cross boundary
- locked-balance mutation must be rejected before downstream use

