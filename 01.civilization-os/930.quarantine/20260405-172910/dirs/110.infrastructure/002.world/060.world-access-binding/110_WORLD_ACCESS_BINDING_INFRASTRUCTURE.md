# ============================================================
# WORLD ACCESS BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for world access bindings.

# 2. INFRASTRUCTURE SCOPE

- access-binding storage
- subject/rule persistence
- binding-status storage
- world-access-binding audit sink

# 3. INFRASTRUCTURE RULES

- world scope and subject scope must be durably resolvable
- subject references and rules must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

