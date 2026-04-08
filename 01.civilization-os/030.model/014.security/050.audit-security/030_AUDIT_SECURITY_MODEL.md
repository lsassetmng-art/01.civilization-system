# ============================================================
# AUDIT SECURITY
# MODEL
# ============================================================

status: draft
layer: model
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for audit security structures.

# 2. CORE ENTITIES

- security_audit_policy
- audit_event_record
- audit_retention_rule
- audit_security_status

# 3. STATE MODEL

security_audit_policy:
- security_audit_policy_id
- security_definition_id
- audit_scope
- audit_type_code
- audit_status

audit_event_record:
- audit_event_record_id
- security_audit_policy_id
- event_code
- event_payload_ref
- event_status

audit_retention_rule:
- audit_retention_rule_id
- security_audit_policy_id
- rule_type_code
- rule_value
- rule_status

audit_security_status:
- audit_security_status_id
- security_audit_policy_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- event record and retention rule must belong to one security audit policy
- audit scope must be explicit
- active and blocked state must be explicit
- hidden audit-security mutation is prohibited

