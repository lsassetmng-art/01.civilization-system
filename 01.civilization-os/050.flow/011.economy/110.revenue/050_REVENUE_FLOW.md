# ============================================================
# REVENUE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for revenue handling.

# 2. TRIGGER

- sale completion
- monthly revenue allocation cycle
- settlement completion event

# 3. MAIN FLOW

1. create or resolve revenue_record
2. bind revenue_source_state
3. calculate revenue_allocation
4. link revenue_settlement_ref where applicable
5. persist final revenue state
6. emit audit trace

# 4. FAILURE FLOW

- missing source scope -> reject
- invalid allocation scope -> reject
- hidden revenue mutation -> fail closed

# 5. OUTPUT

- revenue state
- allocation state
- settlement reference

