# ============================================================
# ANNOTATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for annotation structures.

# 2. RUNTIME STATE

- active annotation-record state
- target-reference resolution state
- annotation-rule resolution state
- active/revised annotation state

# 3. EXECUTION RULES

- annotation scope, target references, and rules must resolve before publication
- revised annotation state must preserve annotation identity
- active and revised states must be explicit
- hidden annotation mutation is prohibited

# 4. FAILURE HANDLING

- missing annotation scope -> reject
- invalid target or rule binding -> reject
- hidden annotation mutation -> fail closed

