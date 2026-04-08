# ============================================================
# RECOMMENDATION SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for education recommendation systems.

# 2. CORE ENTITIES

- recommendation_profile
- recommendation_rule
- recommendation_item
- recommendation_result

# 3. STATE MODEL

recommendation_profile:
- recommendation_profile_id
- subject_scope
- profile_type_code
- profile_status
- profile_version

recommendation_rule:
- recommendation_rule_id
- recommendation_profile_id
- rule_type_code
- rule_value
- rule_status

recommendation_item:
- recommendation_item_id
- recommendation_profile_id
- item_scope
- item_type_code
- item_status

recommendation_result:
- recommendation_result_id
- recommendation_profile_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- rule and item must belong to one recommendation profile
- profile subject scope must be explicit
- result must reference one recommendation profile
- hidden recommendation mutation is prohibited

