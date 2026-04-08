# ============================================================
# MARKET
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for market operations.

# 2. TRIGGER

- listing request
- order submission
- trade matching cycle
- listing/order cancellation

# 3. MAIN FLOW

1. resolve active market
2. create or update listing/order
3. validate market scope and tradability
4. match compatible buy/sell orders
5. create market_trade
6. emit audit trace

# 4. FAILURE FLOW

- invalid market scope -> reject
- non-tradable asset/item -> reject
- cross-market trade attempt -> fail closed

# 5. OUTPUT

- listing/order state
- trade state
- audit record

