# ============================================================
# STORY EVENT BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story event bindings.

# 2. INFRASTRUCTURE SCOPE

- event-binding storage
- reference/rule persistence
- binding-status storage
- story-event-binding audit sink

# 3. INFRASTRUCTURE RULES

- event scope and binding identity must be durably resolvable
- references and rules must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

