# ============================================================
# META CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for meta structures.

# 2. CORE ENTITIES

- meta_definition
- meta_scope_binding
- meta_version
- meta_status

# 3. STATE MODEL

meta_definition:
- meta_definition_id
- meta_code
- meta_type_code
- meta_scope
- meta_status

meta_scope_binding:
- meta_scope_binding_id
- meta_definition_id
- binding_scope
- binding_type_code
- binding_status

meta_version:
- meta_version_id
- meta_definition_id
- version_code
- version_status
- published_at

meta_status:
- meta_status_id
- meta_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one meta definition
- meta scope must be explicit
- active and suspended state must be explicit
- hidden meta-core mutation is prohibited

