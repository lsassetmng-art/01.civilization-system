# ============================================================
# TRADE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for trade routes and contracts.

# 2. POLICY RULES

- route scope and counterpart scope must be explicit
- contract must preserve offer identity
- invalid cross-scope trade is prohibited
- implicit contract mutation is prohibited

# 3. FAILURE RULE

- invalid route scope must reject
- missing contract basis must reject
- invalid cross-scope trade must reject

