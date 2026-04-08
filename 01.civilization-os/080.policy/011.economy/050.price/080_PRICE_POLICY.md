# ============================================================
# PRICE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for prices.

# 2. POLICY RULES

- item scope and currency must be explicit
- one effective price quote per decision point is required
- control state must be explicit before override
- hidden price mutation is prohibited

# 3. FAILURE RULE

- missing price definition must reject
- invalid item/currency scope must reject
- hidden price mutation must reject

