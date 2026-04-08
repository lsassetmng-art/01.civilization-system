# ============================================================
# TRADE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for trade routes and contracts.

# 2. RUNTIME STATE

- active trade-route state
- offer negotiation state
- contract publication state
- trade-result publication state

# 3. EXECUTION RULES

- route scope must validate before offer publication
- contract must preserve offer identity
- completion result must preserve contract identity
- invalid cross-scope trade is prohibited

# 4. FAILURE HANDLING

- invalid route scope -> reject
- missing contract basis -> reject
- invalid cross-scope trade -> fail closed

