# ============================================================
# PRICE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for price handling.

# 2. RUNTIME STATE

- active price-definition state
- quote resolution state
- history append state
- control-state application state

# 3. EXECUTION RULES

- one price quote must resolve as effective per decision point
- history append must follow quote resolution
- control-state application must be explicit
- hidden price mutation is prohibited

# 4. FAILURE HANDLING

- missing price definition -> reject
- invalid item/currency scope -> reject
- hidden price mutation -> fail closed

