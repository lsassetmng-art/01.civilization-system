# ============================================================
# PRICE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for price systems.

# 2. INTEGRATION SCOPE

- price definition to quote/history systems
- quotes to market/payment/tax consumers
- control state to runtime and audit consumers
- price audit to operations

# 3. INTEGRATION RULES

- one effective quote must be explicit at handoff time
- quote and history handoff must preserve price-definition identity
- hidden price mutation must not cross boundary
- ambiguous current price must fail closed

