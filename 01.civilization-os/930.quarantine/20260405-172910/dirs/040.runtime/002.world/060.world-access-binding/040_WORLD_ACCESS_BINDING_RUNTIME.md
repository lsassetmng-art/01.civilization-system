# ============================================================
# WORLD ACCESS BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for world access bindings.

# 2. RUNTIME STATE

- active access-binding state
- subject-reference resolution state
- access-rule resolution state
- active/blocked binding state

# 3. EXECUTION RULES

- world scope, subject scope, and rules must resolve before publication
- blocked state must prevent unauthorized world access
- active and blocked states must be explicit
- hidden access-binding mutation is prohibited

# 4. FAILURE HANDLING

- missing world or subject scope -> reject
- invalid reference or rule binding -> reject
- hidden access-binding mutation -> fail closed

