# ============================================================
# CEASEFIRE RESOLUTION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for ceasefire and war resolution structures.

# 2. RUNTIME STATE

- active resolution state
- ceasefire-condition resolution state
- resolution-term resolution state
- active/closed resolution state

# 3. EXECUTION RULES

- resolution scope, conditions, and terms must resolve before publication
- active and closed states must be explicit
- closed resolution must preserve resolution identity
- hidden ceasefire-resolution mutation is prohibited

# 4. FAILURE HANDLING

- missing resolution scope -> reject
- invalid condition or term binding -> reject
- hidden ceasefire-resolution mutation -> fail closed

