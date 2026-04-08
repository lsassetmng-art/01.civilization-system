# ============================================================
# TRADE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for trades.

# 2. INFRASTRUCTURE SCOPE

- route/offer storage
- contract persistence
- result publication path
- trade audit sink

# 3. INFRASTRUCTURE RULES

- route and offer identity must persist before contract formation
- result must preserve contract identity durably
- invalid cross-scope trade must not publish from infra state
- infrastructure ambiguity must fail closed

