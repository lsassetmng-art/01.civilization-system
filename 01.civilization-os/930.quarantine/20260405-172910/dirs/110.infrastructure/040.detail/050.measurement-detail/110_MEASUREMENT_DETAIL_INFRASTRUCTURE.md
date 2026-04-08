# ============================================================
# MEASUREMENT DETAIL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for measurement detail structures.

# 2. INFRASTRUCTURE SCOPE

- measurement-detail storage
- item/rule persistence
- measurement-status storage
- measurement-detail audit sink

# 3. INFRASTRUCTURE RULES

- measurement scope and identity must be durably resolvable
- items and rules must persist before downstream handoff
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

