# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for Aerial runtime intervention.

# 2. RUNTIME STATE

- active Aerial runtime context
- signal intake state
- assistive action state
- escalation publication state

# 3. EXECUTION RULES

- assistive action must remain within declared support boundary
- escalation scope and reason must be explicit before publication
- hidden direct control through assistive path is prohibited
- action publication must preserve assistive identity

# 4. FAILURE HANDLING

- missing support context -> reject
- invalid escalation scope -> reject
- hidden direct control through assistive path -> fail closed

