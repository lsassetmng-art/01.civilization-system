# ============================================================
# LINEAGE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for lineage structures.

# 2. INFRASTRUCTURE SCOPE

- lineage storage
- source/rule persistence
- lineage-status storage
- lineage audit sink

# 3. INFRASTRUCTURE RULES

- lineage scope and identity must be durably resolvable
- sources and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

