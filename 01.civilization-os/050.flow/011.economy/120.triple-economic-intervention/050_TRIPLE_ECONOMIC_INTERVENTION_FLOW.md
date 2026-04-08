# ============================================================
# TRIPLE ECONOMIC INTERVENTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Triple economic intervention.

# 2. TRIGGER

- severe market imbalance signal
- scheduled economic review
- explicit intervention review request

# 3. MAIN FLOW

1. open triple_economic_context
2. collect economic_signal set
3. validate adjustment channel and authority
4. create economic_adjustment
5. persist economic_reason_trace
6. publish approved action and emit audit trace

# 4. FAILURE FLOW

- undeclared adjustment channel -> reject
- missing reason trace -> reject
- ambiguous authority mode -> fail closed

# 5. OUTPUT

- economic adjustment state
- reason trace
- audit record

