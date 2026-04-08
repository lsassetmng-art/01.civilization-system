# ============================================================
# PLAYER IDENTITY
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player identity structures.

# 2. CORE ENTITIES

- player_identity
- player_name_record
- player_handle_record
- player_identity_status

# 3. STATE MODEL

player_identity:
- player_identity_id
- player_definition_id
- identity_scope
- identity_version
- identity_status

player_name_record:
- player_name_record_id
- player_identity_id
- display_name
- locale_code
- name_status

player_handle_record:
- player_handle_record_id
- player_identity_id
- handle_code
- handle_scope
- handle_status

player_identity_status:
- player_identity_status_id
- player_identity_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- name and handle must belong to one player identity
- identity scope must be explicit
- active and revised state must be explicit
- hidden identity mutation is prohibited

