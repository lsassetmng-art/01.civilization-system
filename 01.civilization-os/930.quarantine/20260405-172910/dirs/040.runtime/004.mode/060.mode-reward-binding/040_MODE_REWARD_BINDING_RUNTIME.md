# ============================================================
# MODE REWARD BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for mode reward bindings.

# 2. RUNTIME STATE

- active reward-binding state
- reward-reference resolution state
- reward-rule resolution state
- active/blocked binding state

# 3. EXECUTION RULES

- reward scope, references, and rules must resolve before publication
- blocked state must prevent unauthorized reward execution
- active and blocked states must be explicit
- hidden reward-binding mutation is prohibited

# 4. FAILURE HANDLING

- missing reward scope -> reject
- invalid reference or rule binding -> reject
- hidden reward-binding mutation -> fail closed

