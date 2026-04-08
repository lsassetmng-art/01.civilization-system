# ============================================================
# PLAYER ENTITLEMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player entitlement structures.

# 2. CORE ENTITIES

- player_entitlement
- entitlement_item
- entitlement_source
- entitlement_status

# 3. STATE MODEL

player_entitlement:
- player_entitlement_id
- player_definition_id
- entitlement_scope
- entitlement_type_code
- entitlement_status

entitlement_item:
- entitlement_item_id
- player_entitlement_id
- item_code
- item_scope
- item_status

entitlement_source:
- entitlement_source_id
- player_entitlement_id
- source_type_code
- source_scope
- source_status

entitlement_status:
- entitlement_status_id
- player_entitlement_id
- active_flag
- revoked_flag
- changed_at

# 4. INTEGRITY RULES

- item and source must belong to one entitlement
- entitlement scope must be explicit
- active and revoked state must be explicit
- hidden entitlement mutation is prohibited

