# ============================================================
# WORLD STATE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for world state structures.

# 2. INFRASTRUCTURE SCOPE

- state-record storage
- condition/metric persistence
- state-status storage
- world-state audit sink

# 3. INFRASTRUCTURE RULES

- state scope and record identity must be durably resolvable
- condition and metric state must persist before publication
- active and frozen state must remain durable
- infrastructure ambiguity must fail closed

