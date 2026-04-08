# ============================================================
# WORLD CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for world core structures.

# 2. RUNTIME STATE

- active world-definition state
- scope-binding resolution state
- version publication state
- active/suspended state

# 3. EXECUTION RULES

- world scope, scope binding, and version must resolve before publication
- one active world state must be explicit per world context
- active and suspended states must be explicit
- hidden world-core mutation is prohibited

# 4. FAILURE HANDLING

- missing world scope -> reject
- invalid binding or version state -> reject
- hidden world-core mutation -> fail closed

