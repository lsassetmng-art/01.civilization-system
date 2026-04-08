# ============================================================
# DETAIL CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for detail structures.

# 2. CORE ENTITIES

- detail_definition
- detail_scope_binding
- detail_version
- detail_status

# 3. STATE MODEL

detail_definition:
- detail_definition_id
- detail_code
- detail_type_code
- detail_scope
- detail_status

detail_scope_binding:
- detail_scope_binding_id
- detail_definition_id
- binding_scope
- binding_type_code
- binding_status

detail_version:
- detail_version_id
- detail_definition_id
- version_code
- version_status
- published_at

detail_status:
- detail_status_id
- detail_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one detail definition
- detail scope must be explicit
- active and suspended state must be explicit
- hidden detail-core mutation is prohibited

