# ============================================================
# WORLD CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for world core structures.

# 2. INFRASTRUCTURE SCOPE

- world-definition storage
- scope/version persistence
- world-status storage
- world-core audit sink

# 3. INFRASTRUCTURE RULES

- world identity and scope must be durably resolvable
- bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

