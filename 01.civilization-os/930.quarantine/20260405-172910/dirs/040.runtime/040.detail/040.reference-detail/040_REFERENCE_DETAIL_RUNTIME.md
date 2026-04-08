# ============================================================
# REFERENCE DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for reference detail structures.

# 2. RUNTIME STATE

- active reference-detail state
- reference-target resolution state
- reference-rule resolution state
- active/revised reference state

# 3. EXECUTION RULES

- reference scope, targets, and rules must resolve before publication
- revised reference state must preserve reference-detail identity
- active and revised states must be explicit
- hidden reference-detail mutation is prohibited

# 4. FAILURE HANDLING

- missing reference scope -> reject
- invalid target or rule binding -> reject
- hidden reference-detail mutation -> fail closed

