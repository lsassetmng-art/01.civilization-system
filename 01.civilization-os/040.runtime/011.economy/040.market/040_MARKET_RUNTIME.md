# ============================================================
# MARKET
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for market operations.

# 2. RUNTIME STATE

- active market state
- listing/order book state
- trade-matching state
- trade publication state

# 3. EXECUTION RULES

- listing/order scope must validate before book entry
- matching must occur within one market scope
- trade publication requires persisted matched order identity
- non-tradable item publication is prohibited

# 4. FAILURE HANDLING

- invalid market scope -> reject
- non-tradable item -> reject
- cross-market trade attempt -> fail closed

