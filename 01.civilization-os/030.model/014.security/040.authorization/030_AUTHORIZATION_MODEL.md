# ============================================================
# AUTHORIZATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for authorization structures.

# 2. CORE ENTITIES

- authorization_policy
- authorization_subject
- authorization_rule
- authorization_status

# 3. STATE MODEL

authorization_policy:
- authorization_policy_id
- security_definition_id
- authorization_scope
- authorization_type_code
- authorization_status

authorization_subject:
- authorization_subject_id
- authorization_policy_id
- subject_scope
- subject_code
- subject_status

authorization_rule:
- authorization_rule_id
- authorization_policy_id
- rule_type_code
- rule_value
- rule_status

authorization_status:
- authorization_status_id
- authorization_policy_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- subject and rule must belong to one authorization policy
- authorization and subject scope must be explicit
- active and blocked state must be explicit
- hidden authorization mutation is prohibited

