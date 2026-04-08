# ============================================================
# EDUCATION FACILITY OPERATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for education facility operations.

# 2. CORE ENTITIES

- education_facility
- facility_operation_rule
- facility_capacity_state
- facility_operation_status

# 3. STATE MODEL

education_facility:
- education_facility_id
- facility_code
- facility_type_code
- facility_scope
- facility_status

facility_operation_rule:
- facility_operation_rule_id
- education_facility_id
- rule_type_code
- rule_value
- rule_status

facility_capacity_state:
- facility_capacity_state_id
- education_facility_id
- capacity_value
- occupancy_value
- capacity_status

facility_operation_status:
- facility_operation_status_id
- education_facility_id
- operation_status
- maintenance_status
- changed_at

# 4. INTEGRITY RULES

- operation rule must belong to one facility
- capacity state must preserve facility identity
- facility scope must be explicit
- hidden facility-status mutation is prohibited

