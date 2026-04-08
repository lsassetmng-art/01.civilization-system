# ============================================================
# PERSONA AUTHORITY
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona authority structures.

# 2. CORE ENTITIES

- persona_authority_definition
- persona_authority_grant
- authority_scope_rule
- authority_status

# 3. STATE MODEL

persona_authority_definition:
- persona_authority_definition_id
- authority_code
- authority_type_code
- authority_scope
- authority_status

persona_authority_grant:
- persona_authority_grant_id
- persona_authority_definition_id
- subject_scope
- grant_reason
- grant_status

authority_scope_rule:
- authority_scope_rule_id
- persona_authority_definition_id
- rule_type_code
- rule_value
- rule_status

authority_status:
- authority_status_id
- persona_authority_grant_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- authority grant and scope rule must preserve authority identity
- subject and authority scope must be explicit
- active and suspended state must be explicit
- hidden authority mutation is prohibited

