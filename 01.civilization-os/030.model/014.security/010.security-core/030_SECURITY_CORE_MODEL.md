# ============================================================
# SECURITY CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for security structures.

# 2. CORE ENTITIES

- security_definition
- security_scope_binding
- security_version
- security_status

# 3. STATE MODEL

security_definition:
- security_definition_id
- security_code
- security_type_code
- security_scope
- security_status

security_scope_binding:
- security_scope_binding_id
- security_definition_id
- binding_scope
- binding_type_code
- binding_status

security_version:
- security_version_id
- security_definition_id
- version_code
- version_status
- published_at

security_status:
- security_status_id
- security_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one security definition
- security scope must be explicit
- active and suspended state must be explicit
- hidden security-core mutation is prohibited

