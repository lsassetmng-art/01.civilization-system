# ============================================================
# WORLD SEED AND GEOGRAPHY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for world seed and geography.

# 2. INFRASTRUCTURE SCOPE

- seed registry storage
- geography build execution path
- continent/zone persistence
- feature publication path

# 3. INFRASTRUCTURE RULES

- seed registry must expose one explicit version
- geography build must persist hierarchy before publication
- feature publication requires durable terrain binding
- infrastructure ambiguity must fail closed

