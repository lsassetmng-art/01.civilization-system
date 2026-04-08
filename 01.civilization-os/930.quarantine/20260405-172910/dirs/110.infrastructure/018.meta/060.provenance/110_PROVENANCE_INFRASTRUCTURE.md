# ============================================================
# PROVENANCE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for provenance structures.

# 2. INFRASTRUCTURE SCOPE

- provenance storage
- actor/rule persistence
- provenance-status storage
- provenance audit sink

# 3. INFRASTRUCTURE RULES

- provenance scope and identity must be durably resolvable
- actors and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

