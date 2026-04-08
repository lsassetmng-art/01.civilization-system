# ============================================================
# WORLD CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for world core structures.

# 2. INTEGRATION SCOPE

- world definition to state/map/environment/time consumers
- scope bindings and versions to runtime/publication consumers
- world-core audit to operations

# 3. INTEGRATION RULES

- world scope, scope binding, and version must be explicit before handoff
- active world handoff must preserve world identity and version
- hidden world-core mutation must not cross boundary
- ambiguous world-core state must fail closed

