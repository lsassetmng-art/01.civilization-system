# ============================================================
# DETAIL CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for detail core structures.

# 2. RUNTIME STATE

- active detail-definition state
- scope-binding resolution state
- version publication state
- active/suspended detail state

# 3. EXECUTION RULES

- detail scope, scope binding, and version must resolve before publication
- one active detail state must be explicit per detail context
- active and suspended states must be explicit
- hidden detail-core mutation is prohibited

# 4. FAILURE HANDLING

- missing detail scope -> reject
- invalid binding or version state -> reject
- hidden detail-core mutation -> fail closed

