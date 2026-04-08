# ============================================================
# META CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for meta core structures.

# 2. INFRASTRUCTURE SCOPE

- meta-definition storage
- scope/version persistence
- meta-status storage
- meta-core audit sink

# 3. INFRASTRUCTURE RULES

- meta scope and identity must be durably resolvable
- scope bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

