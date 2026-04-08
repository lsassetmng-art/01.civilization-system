# ============================================================
# PERSONA CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for persona structures.

# 2. CORE ENTITIES

- persona_definition
- persona_identity
- persona_origin
- persona_status

# 3. STATE MODEL

persona_definition:
- persona_definition_id
- persona_code
- persona_type_code
- persona_scope
- persona_status

persona_identity:
- persona_identity_id
- persona_definition_id
- display_name
- identity_version
- identity_status

persona_origin:
- persona_origin_id
- persona_definition_id
- origin_type_code
- origin_scope
- origin_status

persona_status:
- persona_status_id
- persona_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- identity and origin must belong to one persona definition
- persona scope must be explicit
- active and suspended state must be explicit
- hidden persona-core mutation is prohibited

