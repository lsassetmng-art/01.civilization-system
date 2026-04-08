# ============================================================
# PERSONA ACTIVITY BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona activity bindings.

# 2. INFRASTRUCTURE SCOPE

- activity-binding storage
- reference/rule persistence
- binding-status storage
- activity-binding audit sink

# 3. INFRASTRUCTURE RULES

- persona scope and activity scope must be durably resolvable
- references and rules must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

