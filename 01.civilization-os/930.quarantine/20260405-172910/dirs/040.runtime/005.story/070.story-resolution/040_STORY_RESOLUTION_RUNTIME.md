# ============================================================
# STORY RESOLUTION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story resolutions.

# 2. RUNTIME STATE

- active resolution state
- resolution-condition resolution state
- resolution-result resolution state
- active/closed resolution state

# 3. EXECUTION RULES

- resolution scope, condition set, and result set must resolve before publication
- closed state must preserve resolution identity
- active and closed states must be explicit
- hidden resolution mutation is prohibited

# 4. FAILURE HANDLING

- missing resolution scope -> reject
- invalid condition or result binding -> reject
- hidden resolution mutation -> fail closed

