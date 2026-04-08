# ============================================================
# SYNC BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for sync bindings.

# 2. INFRASTRUCTURE SCOPE

- sync-binding storage
- target/rule persistence
- sync-status storage
- sync-binding audit sink

# 3. INFRASTRUCTURE RULES

- sync scope and identity must be durably resolvable
- targets and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

