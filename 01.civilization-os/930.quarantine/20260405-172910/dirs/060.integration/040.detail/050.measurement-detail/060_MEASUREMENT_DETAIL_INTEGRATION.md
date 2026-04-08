# ============================================================
# MEASUREMENT DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for measurement detail structures.

# 2. INTEGRATION SCOPE

- measurement details to analytics and comparison consumers
- items and rules to runtime and calculation consumers
- measurement-detail audit to operations

# 3. INTEGRATION RULES

- measurement scope, items, and rules must be explicit before handoff
- revised measurement-detail handoff must preserve detail identity
- hidden measurement-detail mutation must not cross boundary
- ambiguous measurement-detail state must fail closed

