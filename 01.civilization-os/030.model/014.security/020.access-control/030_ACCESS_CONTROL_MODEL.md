# ============================================================
# ACCESS CONTROL
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for access control structures.

# 2. CORE ENTITIES

- access_control_policy
- access_subject
- access_permission_rule
- access_control_status

# 3. STATE MODEL

access_control_policy:
- access_control_policy_id
- security_definition_id
- access_scope
- access_type_code
- access_status

access_subject:
- access_subject_id
- access_control_policy_id
- subject_scope
- subject_code
- subject_status

access_permission_rule:
- access_permission_rule_id
- access_control_policy_id
- rule_type_code
- rule_value
- rule_status

access_control_status:
- access_control_status_id
- access_control_policy_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- subject and permission rule must belong to one access control policy
- access and subject scope must be explicit
- active and blocked state must be explicit
- hidden access-control mutation is prohibited

