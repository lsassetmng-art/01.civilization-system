# ============================================================
# COMPOSITION DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for composition detail structures.

# 2. INTEGRATION SCOPE

- composition details to assembly and rendering consumers
- items and rules to runtime and composition consumers
- composition-detail audit to operations

# 3. INTEGRATION RULES

- composition scope, items, and rules must be explicit before handoff
- revised composition-detail handoff must preserve detail identity
- hidden composition-detail mutation must not cross boundary
- ambiguous composition-detail state must fail closed

