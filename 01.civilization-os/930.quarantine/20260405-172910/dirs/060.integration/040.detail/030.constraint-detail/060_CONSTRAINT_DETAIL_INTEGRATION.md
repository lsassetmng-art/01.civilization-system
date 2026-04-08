# ============================================================
# CONSTRAINT DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for constraint detail structures.

# 2. INTEGRATION SCOPE

- constraint details to validation and enforcement consumers
- items and rules to runtime and control consumers
- constraint-detail audit to operations

# 3. INTEGRATION RULES

- constraint scope, items, and rules must be explicit before handoff
- blocked constraint-detail state must preserve blocking reason
- hidden constraint-detail mutation must not cross boundary
- ambiguous constraint-detail state must fail closed

