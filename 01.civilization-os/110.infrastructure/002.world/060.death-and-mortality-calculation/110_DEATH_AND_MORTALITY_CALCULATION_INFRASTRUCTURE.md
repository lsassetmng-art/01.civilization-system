# ============================================================
# DEATH AND MORTALITY CALCULATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mortality calculation.

# 2. INFRASTRUCTURE SCOPE

- mortality-profile storage
- aggregate persistence
- impact publication path
- mortality audit sink

# 3. INFRASTRUCTURE RULES

- aggregate persistence must complete before publication
- mortality output must preserve region and period identity
- audit sink must be durable
- infrastructure ambiguity must fail closed

