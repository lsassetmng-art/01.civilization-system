# ============================================================
# WORLD CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for world structures.

# 2. CORE ENTITIES

- world_definition
- world_scope_binding
- world_version
- world_status

# 3. STATE MODEL

world_definition:
- world_definition_id
- world_code
- world_type_code
- world_scope
- world_status

world_scope_binding:
- world_scope_binding_id
- world_definition_id
- binding_scope
- binding_type_code
- binding_status

world_version:
- world_version_id
- world_definition_id
- version_code
- version_status
- published_at

world_status:
- world_status_id
- world_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one world definition
- world scope must be explicit
- active and suspended state must be explicit
- hidden world-core mutation is prohibited

