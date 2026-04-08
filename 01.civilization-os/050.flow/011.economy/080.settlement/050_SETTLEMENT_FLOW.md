# ============================================================
# SETTLEMENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for settlement.

# 2. TRIGGER

- settlement cycle
- completed payment/trade batch
- reconciliation request

# 3. MAIN FLOW

1. open settlement_batch
2. create settlement_item set
3. compute settlement_result per item
4. persist results
5. run settlement_reconciliation
6. emit audit trace

# 4. FAILURE FLOW

- missing batch scope -> reject
- invalid item membership -> reject
- silent discrepancy -> fail closed

# 5. OUTPUT

- settlement result set
- reconciliation state
- audit record

