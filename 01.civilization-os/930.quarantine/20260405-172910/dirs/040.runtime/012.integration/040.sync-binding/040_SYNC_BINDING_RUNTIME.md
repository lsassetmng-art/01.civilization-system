# ============================================================
# SYNC BINDING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for sync bindings.

# 2. RUNTIME STATE

- active sync-binding state
- sync-target resolution state
- sync-rule resolution state
- active/blocked sync state

# 3. EXECUTION RULES

- sync scope, target set, and rule set must resolve before publication
- blocked sync state must prevent unauthorized sync execution
- active and blocked states must be explicit
- hidden sync mutation is prohibited

# 4. FAILURE HANDLING

- missing sync scope -> reject
- invalid target or rule binding -> reject
- hidden sync mutation -> fail closed

