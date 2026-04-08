# ============================================================
# EMPLOYMENT ROUTE
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for employment route structures.

# 2. CORE ENTITIES

- employment_route_definition
- employment_route_stage
- route_condition
- route_status

# 3. STATE MODEL

employment_route_definition:
- employment_route_definition_id
- route_code
- route_scope
- route_type_code
- route_status

employment_route_stage:
- employment_route_stage_id
- employment_route_definition_id
- stage_code
- stage_order
- stage_status

route_condition:
- route_condition_id
- employment_route_definition_id
- condition_type_code
- condition_value
- condition_status

route_status:
- route_status_id
- employment_route_definition_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- stage and condition must belong to one employment route definition
- route scope must be explicit
- stage order must be deterministic
- hidden employment-route mutation is prohibited

