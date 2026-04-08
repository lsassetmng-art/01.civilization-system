# ============================================================
# CURRENCY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for currencies.

# 2. INFRASTRUCTURE SCOPE

- currency-definition storage
- rate storage
- freeze-state persistence
- currency audit sink

# 3. INFRASTRUCTURE RULES

- one active currency definition must be durably resolvable
- effective rates must preserve timestamp and pair identity
- freeze-state changes must persist before downstream publication
- infrastructure ambiguity must fail closed

