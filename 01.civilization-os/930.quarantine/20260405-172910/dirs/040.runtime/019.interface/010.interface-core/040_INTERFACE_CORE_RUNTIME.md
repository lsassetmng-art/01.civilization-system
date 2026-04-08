# ============================================================
# INTERFACE CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for interface core structures.

# 2. RUNTIME STATE

- active interface-definition state
- scope-binding resolution state
- version publication state
- active/suspended interface state

# 3. EXECUTION RULES

- interface scope, scope binding, and version must resolve before publication
- one active interface state must be explicit per interface context
- active and suspended states must be explicit
- hidden interface-core mutation is prohibited

# 4. FAILURE HANDLING

- missing interface scope -> reject
- invalid binding or version state -> reject
- hidden interface-core mutation -> fail closed

