# ============================================================
# INTERFACE CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for interface structures.

# 2. CORE ENTITIES

- interface_definition
- interface_scope_binding
- interface_version
- interface_status

# 3. STATE MODEL

interface_definition:
- interface_definition_id
- interface_code
- interface_type_code
- interface_scope
- interface_status

interface_scope_binding:
- interface_scope_binding_id
- interface_definition_id
- binding_scope
- binding_type_code
- binding_status

interface_version:
- interface_version_id
- interface_definition_id
- version_code
- version_status
- published_at

interface_status:
- interface_status_id
- interface_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one interface definition
- interface scope must be explicit
- active and suspended state must be explicit
- hidden interface-core mutation is prohibited

