# ============================================================
# MARKET
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for markets.

# 2. POLICY RULES

- listing, order, and trade must preserve market scope
- non-tradable items must not enter market flow
- cross-market trade is prohibited
- implicit order matching outside declared rules is prohibited

# 3. FAILURE RULE

- invalid market scope must reject
- non-tradable item must reject
- cross-market trade must reject

