# ============================================================
# PERSONA PROFILE
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona profile structures.

# 2. CORE ENTITIES

- persona_profile
- persona_profile_attribute
- persona_profile_publication
- persona_profile_status

# 3. STATE MODEL

persona_profile:
- persona_profile_id
- persona_definition_id
- profile_scope
- profile_version
- profile_status

persona_profile_attribute:
- persona_profile_attribute_id
- persona_profile_id
- attribute_type_code
- attribute_value
- attribute_status

persona_profile_publication:
- persona_profile_publication_id
- persona_profile_id
- publication_scope
- publication_type_code
- publication_status

persona_profile_status:
- persona_profile_status_id
- persona_profile_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- profile attribute and publication must belong to one persona profile
- profile scope must be explicit
- active and revised state must be explicit
- hidden profile mutation is prohibited

