# ============================================================
# WORLD STATE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for world state structures.

# 2. INTEGRATION SCOPE

- world state to mode/runtime/progression consumers
- condition and metric state to environment and decision consumers
- world-state audit to operations

# 3. INTEGRATION RULES

- state scope, condition state, and metric state must be explicit before handoff
- frozen world state must not cross mutation boundary
- hidden world-state mutation must not cross boundary
- ambiguous world-state publication must fail closed

