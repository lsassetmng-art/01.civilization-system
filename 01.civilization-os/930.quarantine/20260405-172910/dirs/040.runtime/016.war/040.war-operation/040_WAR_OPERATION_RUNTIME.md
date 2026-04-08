# ============================================================
# WAR OPERATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for war operation structures.

# 2. RUNTIME STATE

- active operation state
- operation-phase resolution state
- operation-objective resolution state
- active/closed operation state

# 3. EXECUTION RULES

- operation scope, phases, and objectives must resolve before publication
- phase order must remain deterministic
- active and closed states must be explicit
- hidden war-operation mutation is prohibited

# 4. FAILURE HANDLING

- missing operation scope -> reject
- invalid phase or objective binding -> reject
- hidden war-operation mutation -> fail closed

