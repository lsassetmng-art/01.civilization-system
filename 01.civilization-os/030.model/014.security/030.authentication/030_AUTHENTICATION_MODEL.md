# ============================================================
# AUTHENTICATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for authentication structures.

# 2. CORE ENTITIES

- authentication_profile
- authentication_factor
- authentication_session
- authentication_status

# 3. STATE MODEL

authentication_profile:
- authentication_profile_id
- security_definition_id
- auth_scope
- auth_type_code
- auth_status

authentication_factor:
- authentication_factor_id
- authentication_profile_id
- factor_type_code
- factor_value_ref
- factor_status

authentication_session:
- authentication_session_id
- authentication_profile_id
- session_scope
- session_code
- session_status

authentication_status:
- authentication_status_id
- authentication_profile_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- factor and session must belong to one authentication profile
- auth scope must be explicit
- active and blocked state must be explicit
- hidden authentication mutation is prohibited

