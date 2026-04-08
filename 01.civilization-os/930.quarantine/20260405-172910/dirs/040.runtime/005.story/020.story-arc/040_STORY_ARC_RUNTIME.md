# ============================================================
# STORY ARC
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story arcs.

# 2. RUNTIME STATE

- active arc state
- phase resolution state
- condition resolution state
- active/closed arc state

# 3. EXECUTION RULES

- arc scope, phase order, and condition set must resolve before publication
- phase order must remain deterministic
- active and closed states must be explicit
- hidden arc mutation is prohibited

# 4. FAILURE HANDLING

- missing arc scope -> reject
- invalid phase or condition binding -> reject
- hidden arc mutation -> fail closed

