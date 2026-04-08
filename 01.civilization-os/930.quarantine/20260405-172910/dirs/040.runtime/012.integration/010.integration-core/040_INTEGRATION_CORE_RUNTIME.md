# ============================================================
# INTEGRATION CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for integration core structures.

# 2. RUNTIME STATE

- active integration-definition state
- endpoint resolution state
- contract resolution state
- active/suspended integration state

# 3. EXECUTION RULES

- integration scope, endpoint set, and contract set must resolve before publication
- one active integration state must be explicit per integration context
- active and suspended states must be explicit
- hidden integration-core mutation is prohibited

# 4. FAILURE HANDLING

- missing integration scope -> reject
- invalid endpoint or contract binding -> reject
- hidden integration-core mutation -> fail closed

