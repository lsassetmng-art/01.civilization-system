# ============================================================
# WORLD ACCESS BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for world access bindings.

# 2. INTEGRATION SCOPE

- access bindings to runtime and session consumers
- subject references and rules to approval and enforcement consumers
- world-access-binding audit to operations

# 3. INTEGRATION RULES

- world scope, subject scope, and rules must be explicit before handoff
- blocked access-binding state must preserve blocking reason
- hidden access-binding mutation must not cross boundary
- ambiguous access-binding state must fail closed

