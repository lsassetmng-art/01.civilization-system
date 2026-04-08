# ============================================================
# TRADE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for trades.

# 2. INTEGRATION SCOPE

- routes/offers to contract formation
- contracts to settlement/payment consumers
- trade results to market/revenue consumers
- trade audit to operations

# 3. INTEGRATION RULES

- route and counterpart scope must be explicit before contract handoff
- trade result must preserve contract identity
- invalid cross-scope trade must not cross boundary
- rejected trade formation must preserve reason evidence

