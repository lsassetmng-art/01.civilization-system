# ============================================================
# RUNTIME PARAMETER
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for runtime parameters.

# 2. CORE ENTITIES

- runtime_parameter_set
- runtime_parameter_item
- runtime_parameter_scope
- runtime_parameter_status

# 3. STATE MODEL

runtime_parameter_set:
- parameter_set_id
- parameter_set_code
- runtime_scope
- version_code
- set_status

runtime_parameter_item:
- parameter_item_id
- parameter_set_id
- parameter_key
- parameter_value
- parameter_type_code

runtime_parameter_scope:
- parameter_scope_id
- parameter_set_id
- scope_type_code
- scope_ref
- scope_status

runtime_parameter_status:
- parameter_status_id
- parameter_set_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- one active parameter set per runtime scope and version window
- parameter item must belong to one parameter set
- scope must be explicit
- frozen parameter set must not mutate silently

