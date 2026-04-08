# ============================================================
# CIVIL SERVICE ELIGIBILITY
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for civil service eligibility.

# 2. CORE ENTITIES

- civil_service_rule
- civil_service_requirement
- civil_service_evaluation
- civil_service_result

# 3. STATE MODEL

civil_service_rule:
- civil_service_rule_id
- service_role_code
- jurisdiction_scope
- rule_version
- rule_status

civil_service_requirement:
- civil_service_requirement_id
- civil_service_rule_id
- requirement_type_code
- requirement_value
- requirement_status

civil_service_evaluation:
- civil_service_evaluation_id
- service_role_code
- candidate_scope
- evaluation_status
- evaluated_at

civil_service_result:
- civil_service_result_id
- civil_service_evaluation_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- requirement must belong to one civil service rule
- evaluation must preserve role and candidate scope
- result must reference one evaluation
- hidden eligibility override is prohibited

