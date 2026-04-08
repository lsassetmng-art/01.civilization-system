# ============================================================
# SECURITY CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for security core structures.

# 2. RUNTIME STATE

- active security-definition state
- scope-binding resolution state
- version publication state
- active/suspended security state

# 3. EXECUTION RULES

- security scope, scope binding, and version must resolve before publication
- one active security state must be explicit per security context
- active and suspended states must be explicit
- hidden security-core mutation is prohibited

# 4. FAILURE HANDLING

- missing security scope -> reject
- invalid binding or version state -> reject
- hidden security-core mutation -> fail closed

