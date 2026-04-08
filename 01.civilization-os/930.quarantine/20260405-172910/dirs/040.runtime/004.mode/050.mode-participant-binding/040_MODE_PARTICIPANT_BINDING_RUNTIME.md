# ============================================================
# MODE PARTICIPANT BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for mode participant bindings.

# 2. RUNTIME STATE

- active participant-binding state
- participant-reference resolution state
- participant-rule resolution state
- active/blocked binding state

# 3. EXECUTION RULES

- participant scope, references, and rules must resolve before publication
- blocked state must prevent unauthorized participant execution
- active and blocked states must be explicit
- hidden participant-binding mutation is prohibited

# 4. FAILURE HANDLING

- missing participant scope -> reject
- invalid reference or rule binding -> reject
- hidden participant-binding mutation -> fail closed

