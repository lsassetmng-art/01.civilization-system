# ============================================================
# PLAYER CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for player structures.

# 2. CORE ENTITIES

- player_definition
- player_status
- player_origin
- player_scope_binding

# 3. STATE MODEL

player_definition:
- player_definition_id
- player_code
- player_type_code
- player_scope
- player_status

player_status:
- player_status_id
- player_definition_id
- active_flag
- suspended_flag
- changed_at

player_origin:
- player_origin_id
- player_definition_id
- origin_type_code
- origin_scope
- origin_status

player_scope_binding:
- player_scope_binding_id
- player_definition_id
- binding_scope
- binding_type_code
- binding_status

# 4. INTEGRITY RULES

- status, origin, and scope binding must belong to one player definition
- player scope must be explicit
- active and suspended state must be explicit
- hidden player-core mutation is prohibited

