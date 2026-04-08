# ============================================================
# REFERENCE DETAIL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for reference detail structures.

# 2. INFRASTRUCTURE SCOPE

- reference-detail storage
- target/rule persistence
- reference-status storage
- reference-detail audit sink

# 3. INFRASTRUCTURE RULES

- reference scope and identity must be durably resolvable
- targets and rules must persist before downstream handoff
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

