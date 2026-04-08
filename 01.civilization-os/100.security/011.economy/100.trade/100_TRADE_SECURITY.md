# ============================================================
# TRADE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for trades.

# 2. SECURITY SCOPE

- route/offer authorization
- contract/result integrity
- counterparty scope protection
- trade audit protection

# 3. SECURITY RULES

- contract formation requires explicit authorization
- contract and result must preserve offer identity
- invalid cross-scope trade misuse must be detectable
- audit output must preserve route scope

