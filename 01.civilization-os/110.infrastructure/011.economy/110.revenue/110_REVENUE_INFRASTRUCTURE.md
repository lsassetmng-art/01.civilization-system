# ============================================================
# REVENUE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for revenues.

# 2. INFRASTRUCTURE SCOPE

- revenue storage
- allocation persistence
- settlement-reference storage
- revenue audit sink

# 3. INFRASTRUCTURE RULES

- source and allocation state must persist durably
- settlement reference must preserve revenue identity
- revenue publication requires persisted source state
- infrastructure ambiguity must fail closed

