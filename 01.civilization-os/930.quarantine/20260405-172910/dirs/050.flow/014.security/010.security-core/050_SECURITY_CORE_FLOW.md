# ============================================================
# SECURITY CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for security core handling.

# 2. TRIGGER

- security creation/update request
- security version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve security_definition
2. bind security_scope_binding
3. create or update security_version
4. validate security scope and version consistency
5. persist security_status
6. emit audit trace

# 4. FAILURE FLOW

- missing security scope -> reject
- invalid binding or version state -> reject
- hidden security-core mutation -> fail closed

# 5. OUTPUT

- security core state
- scope/version state
- audit record

