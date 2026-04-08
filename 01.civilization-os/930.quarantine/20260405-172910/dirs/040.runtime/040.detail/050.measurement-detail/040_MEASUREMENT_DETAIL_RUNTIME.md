# ============================================================
# MEASUREMENT DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for measurement detail structures.

# 2. RUNTIME STATE

- active measurement-detail state
- measurement-item resolution state
- measurement-rule resolution state
- active/revised measurement state

# 3. EXECUTION RULES

- measurement scope, items, and rules must resolve before publication
- revised measurement state must preserve measurement-detail identity
- active and revised states must be explicit
- hidden measurement-detail mutation is prohibited

# 4. FAILURE HANDLING

- missing measurement scope -> reject
- invalid item or rule binding -> reject
- hidden measurement-detail mutation -> fail closed

