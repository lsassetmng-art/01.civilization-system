# ============================================================
# MODE PARTICIPANT BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mode participant bindings.

# 2. INFRASTRUCTURE SCOPE

- participant-binding storage
- reference/rule persistence
- binding-status storage
- mode-participant-binding audit sink

# 3. INFRASTRUCTURE RULES

- participant scope and binding identity must be durably resolvable
- references and rules must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

