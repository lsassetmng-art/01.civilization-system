# ============================================================
# REFERENCE DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for reference detail structures.

# 2. INTEGRATION SCOPE

- reference details to lookup and relation consumers
- targets and rules to runtime and resolution consumers
- reference-detail audit to operations

# 3. INTEGRATION RULES

- reference scope, targets, and rules must be explicit before handoff
- revised reference-detail handoff must preserve detail identity
- hidden reference-detail mutation must not cross boundary
- ambiguous reference-detail state must fail closed

