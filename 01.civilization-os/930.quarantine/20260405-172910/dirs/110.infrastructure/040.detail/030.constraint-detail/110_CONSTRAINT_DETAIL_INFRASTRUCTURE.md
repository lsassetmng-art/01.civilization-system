# ============================================================
# CONSTRAINT DETAIL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for constraint detail structures.

# 2. INFRASTRUCTURE SCOPE

- constraint-detail storage
- item/rule persistence
- constraint-status storage
- constraint-detail audit sink

# 3. INFRASTRUCTURE RULES

- constraint scope and identity must be durably resolvable
- items and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

