# ============================================================
# PRICE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for prices.

# 2. INFRASTRUCTURE SCOPE

- price-definition storage
- quote/history persistence
- control-state storage
- price audit sink

# 3. INFRASTRUCTURE RULES

- current effective quote must be durably resolvable
- history append must preserve definition identity
- control-state changes must persist before publication
- infrastructure ambiguity must fail closed

