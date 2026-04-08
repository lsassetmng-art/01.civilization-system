# ============================================================
# PLAYER WALLET BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player wallet bindings.

# 2. CORE ENTITIES

- player_wallet_binding
- wallet_reference
- wallet_constraint
- wallet_binding_status

# 3. STATE MODEL

player_wallet_binding:
- player_wallet_binding_id
- player_definition_id
- binding_scope
- wallet_type_code
- binding_status

wallet_reference:
- wallet_reference_id
- player_wallet_binding_id
- wallet_scope
- wallet_code
- reference_status

wallet_constraint:
- wallet_constraint_id
- player_wallet_binding_id
- constraint_type_code
- constraint_value
- constraint_status

wallet_binding_status:
- wallet_binding_status_id
- player_wallet_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- wallet reference and constraint must belong to one binding
- player and wallet scope must be explicit
- active and blocked state must be explicit
- hidden wallet-binding mutation is prohibited

