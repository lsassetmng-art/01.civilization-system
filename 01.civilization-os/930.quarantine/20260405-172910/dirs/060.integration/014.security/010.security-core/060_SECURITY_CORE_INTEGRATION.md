# ============================================================
# SECURITY CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for security core structures.

# 2. INTEGRATION SCOPE

- security definition to access/auth/authz/audit consumers
- scope bindings and versions to runtime/publication consumers
- security-core audit to operations

# 3. INTEGRATION RULES

- security scope, scope binding, and version must be explicit before handoff
- active security handoff must preserve security identity and version
- hidden security-core mutation must not cross boundary
- ambiguous security-core state must fail closed

