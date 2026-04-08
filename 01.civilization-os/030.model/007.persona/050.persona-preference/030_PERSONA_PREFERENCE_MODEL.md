# ============================================================
# PERSONA PREFERENCE
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona preference structures.

# 2. CORE ENTITIES

- persona_preference_profile
- preference_item
- preference_priority
- preference_status

# 3. STATE MODEL

persona_preference_profile:
- persona_preference_profile_id
- persona_definition_id
- preference_scope
- preference_version
- preference_status

preference_item:
- preference_item_id
- persona_preference_profile_id
- preference_type_code
- preference_value
- preference_item_status

preference_priority:
- preference_priority_id
- persona_preference_profile_id
- priority_code
- priority_value
- priority_status

preference_status:
- preference_status_id
- persona_preference_profile_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- preference item and priority must belong to one preference profile
- preference scope must be explicit
- active and revised state must be explicit
- hidden preference mutation is prohibited

