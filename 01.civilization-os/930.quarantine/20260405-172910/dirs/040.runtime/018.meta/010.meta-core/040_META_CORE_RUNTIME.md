# ============================================================
# META CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for meta core structures.

# 2. RUNTIME STATE

- active meta-definition state
- scope-binding resolution state
- version publication state
- active/suspended meta state

# 3. EXECUTION RULES

- meta scope, scope binding, and version must resolve before publication
- one active meta state must be explicit per meta context
- active and suspended states must be explicit
- hidden meta-core mutation is prohibited

# 4. FAILURE HANDLING

- missing meta scope -> reject
- invalid binding or version state -> reject
- hidden meta-core mutation -> fail closed

