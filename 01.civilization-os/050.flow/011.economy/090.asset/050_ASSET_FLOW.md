# ============================================================
# ASSET
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for asset ownership and valuation.

# 2. TRIGGER

- asset creation/update
- valuation refresh
- transfer request

# 3. MAIN FLOW

1. resolve asset_record
2. resolve current owner state
3. update valuation where applicable
4. apply transfer if validated
5. persist owner/transfer state
6. emit audit trace

# 4. FAILURE FLOW

- missing asset identity -> reject
- invalid owner scope -> reject
- hidden ownership mutation -> fail closed

# 5. OUTPUT

- asset state
- valuation state
- transfer state

