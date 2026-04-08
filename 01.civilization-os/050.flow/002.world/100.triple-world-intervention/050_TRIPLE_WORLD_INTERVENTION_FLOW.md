# ============================================================
# TRIPLE WORLD INTERVENTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Triple world intervention.

# 2. TRIGGER

- severe world imbalance signal
- scheduled Triple evaluation
- explicit intervention review request

# 3. MAIN FLOW

1. open triple_world_context
2. collect intervention signals
3. validate allowed intervention channel
4. determine intervention action
5. persist intervention reason trace
6. publish approved action and audit trace

# 4. FAILURE FLOW

- undeclared channel -> reject
- missing reason trace -> reject
- ambiguous authority mode -> fail closed

# 5. OUTPUT

- intervention action
- reason trace
- audit record

