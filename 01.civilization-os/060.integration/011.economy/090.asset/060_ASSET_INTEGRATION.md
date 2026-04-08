# ============================================================
# ASSET
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for economic assets.

# 2. INTEGRATION SCOPE

- asset state to valuation systems
- ownership state to trade/market/ledger consumers
- transfer records to settlement/compliance consumers
- asset audit to operations

# 3. INTEGRATION RULES

- ownership and transfer handoff must preserve asset identity
- valuation must preserve currency and time context
- hidden ownership mutation must not cross boundary
- ambiguous owner state must fail closed

