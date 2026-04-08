# ============================================================
# MODE REWARD BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mode reward bindings.

# 2. INFRASTRUCTURE SCOPE

- reward-binding storage
- reference/rule persistence
- binding-status storage
- mode-reward-binding audit sink

# 3. INFRASTRUCTURE RULES

- reward scope and binding identity must be durably resolvable
- references and rules must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

