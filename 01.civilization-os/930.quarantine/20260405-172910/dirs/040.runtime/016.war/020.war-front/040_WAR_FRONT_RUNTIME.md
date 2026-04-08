# ============================================================
# WAR FRONT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for war front structures.

# 2. RUNTIME STATE

- active war-front state
- line-segment resolution state
- front-condition resolution state
- active/closed front state

# 3. EXECUTION RULES

- front scope, line segments, and conditions must resolve before publication
- segment order must remain deterministic
- active and closed states must be explicit
- hidden war-front mutation is prohibited

# 4. FAILURE HANDLING

- missing front scope -> reject
- invalid segment or condition binding -> reject
- hidden war-front mutation -> fail closed

