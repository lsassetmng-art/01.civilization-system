# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for military service and mobilization law.

# 2. CORE ENTITIES

- military_service_rule
- mobilization_order
- service_obligation_state
- mobilization_status

# 3. STATE MODEL

military_service_rule:
- military_service_rule_id
- jurisdiction_scope
- service_type_code
- rule_version
- rule_status

mobilization_order:
- mobilization_order_id
- order_scope
- mobilization_type_code
- issued_at
- order_status

service_obligation_state:
- service_obligation_state_id
- subject_scope
- obligation_type_code
- obligation_status
- changed_at

mobilization_status:
- mobilization_status_id
- mobilization_order_id
- execution_status
- completion_status
- changed_at

# 4. INTEGRITY RULES

- mobilization order must preserve order scope
- service obligation must preserve subject scope
- mobilization status must reference one order
- hidden mobilization without order is prohibited

