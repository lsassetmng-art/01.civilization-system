# ============================================================
# PERSONA ACTIVITY BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for persona activity bindings.

# 2. RUNTIME STATE

- active activity-binding state
- activity-reference resolution state
- activity-rule resolution state
- active/blocked publication state

# 3. EXECUTION RULES

- persona scope, activity scope, and rule set must resolve before binding publication
- blocked state must prevent unauthorized activity execution
- active and blocked states must be explicit
- hidden activity-binding mutation is prohibited

# 4. FAILURE HANDLING

- missing persona or activity scope -> reject
- invalid reference or rule binding -> reject
- hidden activity-binding mutation -> fail closed

