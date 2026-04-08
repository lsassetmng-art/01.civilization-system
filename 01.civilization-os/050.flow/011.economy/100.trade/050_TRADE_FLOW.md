# ============================================================
# TRADE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for trade routes and contracts.

# 2. TRIGGER

- trade offer request
- contract negotiation/approval
- trade completion event

# 3. MAIN FLOW

1. resolve trade_route
2. create or update trade_offer
3. validate counterpart and route scope
4. create trade_contract
5. persist trade_result on completion
6. emit audit trace

# 4. FAILURE FLOW

- invalid route scope -> reject
- missing counterpart or contract basis -> reject
- cross-scope invalid trade -> fail closed

# 5. OUTPUT

- offer/contract/result state
- audit record

