# ============================================================
# DETAIL CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for detail core structures.

# 2. INFRASTRUCTURE SCOPE

- detail-definition storage
- scope/version persistence
- detail-status storage
- detail-core audit sink

# 3. INFRASTRUCTURE RULES

- detail scope and identity must be durably resolvable
- scope bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

