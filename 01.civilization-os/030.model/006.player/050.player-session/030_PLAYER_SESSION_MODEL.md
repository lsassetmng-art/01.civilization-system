# ============================================================
# PLAYER SESSION
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player sessions.

# 2. CORE ENTITIES

- player_session
- session_device_binding
- session_token_state
- session_status

# 3. STATE MODEL

player_session:
- player_session_id
- player_definition_id
- session_scope
- session_type_code
- session_status

session_device_binding:
- session_device_binding_id
- player_session_id
- device_scope
- device_code
- device_status

session_token_state:
- session_token_state_id
- player_session_id
- token_scope
- token_status
- expires_at

session_status:
- session_status_id
- player_session_id
- active_flag
- revoked_flag
- changed_at

# 4. INTEGRITY RULES

- device binding and token state must belong to one session
- session scope must be explicit
- active and revoked state must be explicit
- hidden session mutation is prohibited

