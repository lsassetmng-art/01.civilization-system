# ============================================================
# PRICE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for price handling.

# 2. TRIGGER

- price quote refresh
- market trade result
- manual price control action
- price-history snapshot cycle

# 3. MAIN FLOW

1. resolve price_definition
2. calculate or ingest new price_quote
3. append price_history
4. apply price_control_state where applicable
5. publish current effective price
6. emit audit trace

# 4. FAILURE FLOW

- missing price definition -> reject
- invalid currency/item scope -> reject
- hidden price mutation -> fail closed

# 5. OUTPUT

- price quote
- history state
- control state

