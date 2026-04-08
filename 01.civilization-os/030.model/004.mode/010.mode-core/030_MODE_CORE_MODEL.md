# ============================================================
# MODE CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for mode structures.

# 2. CORE ENTITIES

- mode_definition
- mode_scope_binding
- mode_version
- mode_status

# 3. STATE MODEL

mode_definition:
- mode_definition_id
- mode_code
- mode_type_code
- mode_scope
- mode_status

mode_scope_binding:
- mode_scope_binding_id
- mode_definition_id
- binding_scope
- binding_type_code
- binding_status

mode_version:
- mode_version_id
- mode_definition_id
- version_code
- version_status
- published_at

mode_status:
- mode_status_id
- mode_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one mode definition
- mode scope must be explicit
- active and suspended state must be explicit
- hidden mode-core mutation is prohibited

