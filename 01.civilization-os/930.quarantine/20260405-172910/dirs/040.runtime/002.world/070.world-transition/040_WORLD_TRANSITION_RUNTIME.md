# ============================================================
# WORLD TRANSITION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for world transitions.

# 2. RUNTIME STATE

- active world-transition state
- trigger resolution state
- guard resolution state
- active/blocked transition state

# 3. EXECUTION RULES

- from/to state, triggers, and guards must resolve before publication
- blocked state must prevent unauthorized world change
- active and blocked states must be explicit
- hidden world-transition mutation is prohibited

# 4. FAILURE HANDLING

- missing from/to state -> reject
- invalid trigger or guard binding -> reject
- hidden world-transition mutation -> fail closed

