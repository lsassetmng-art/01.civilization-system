# ============================================================
# MODE CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for mode core structures.

# 2. RUNTIME STATE

- active mode-definition state
- scope-binding resolution state
- version publication state
- active/suspended state

# 3. EXECUTION RULES

- mode scope, scope binding, and version must resolve before publication
- one active mode state must be explicit per mode context
- active and suspended states must be explicit
- hidden mode-core mutation is prohibited

# 4. FAILURE HANDLING

- missing mode scope -> reject
- invalid binding or version state -> reject
- hidden mode-core mutation -> fail closed

