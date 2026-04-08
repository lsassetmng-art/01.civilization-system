# ============================================================
# STORY EVENT BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story event bindings.

# 2. RUNTIME STATE

- active event-binding state
- event-reference resolution state
- rule resolution state
- active/blocked binding state

# 3. EXECUTION RULES

- event scope, event reference, and rule set must resolve before publication
- blocked state must prevent unauthorized event execution
- active and blocked states must be explicit
- hidden event-binding mutation is prohibited

# 4. FAILURE HANDLING

- missing event scope -> reject
- invalid reference or rule binding -> reject
- hidden event-binding mutation -> fail closed

