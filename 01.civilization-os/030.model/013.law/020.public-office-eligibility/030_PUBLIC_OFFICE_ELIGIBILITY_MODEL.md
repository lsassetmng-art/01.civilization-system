# ============================================================
# PUBLIC OFFICE ELIGIBILITY
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for public office eligibility.

# 2. CORE ENTITIES

- public_office_eligibility_rule
- public_office_requirement
- eligibility_evaluation
- eligibility_result

# 3. STATE MODEL

public_office_eligibility_rule:
- public_office_eligibility_rule_id
- office_code
- jurisdiction_scope
- rule_version
- rule_status

public_office_requirement:
- public_office_requirement_id
- public_office_eligibility_rule_id
- requirement_type_code
- requirement_value
- requirement_status

eligibility_evaluation:
- eligibility_evaluation_id
- office_code
- candidate_scope
- evaluation_status
- evaluated_at

eligibility_result:
- eligibility_result_id
- eligibility_evaluation_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- requirement must belong to one eligibility rule
- evaluation must preserve office and candidate scope
- result must reference one evaluation
- hidden eligibility override is prohibited

