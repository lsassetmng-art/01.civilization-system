# ============================================================
# THREAT RESPONSE
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for threat response structures.

# 2. CORE ENTITIES

- threat_response_policy
- threat_signal
- response_action_rule
- threat_response_status

# 3. STATE MODEL

threat_response_policy:
- threat_response_policy_id
- security_definition_id
- response_scope
- response_type_code
- response_status

threat_signal:
- threat_signal_id
- threat_response_policy_id
- signal_code
- signal_value
- signal_status

response_action_rule:
- response_action_rule_id
- threat_response_policy_id
- rule_type_code
- rule_value
- rule_status

threat_response_status:
- threat_response_status_id
- threat_response_policy_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- threat signal and action rule must belong to one threat response policy
- response scope must be explicit
- active and blocked state must be explicit
- hidden threat-response mutation is prohibited

