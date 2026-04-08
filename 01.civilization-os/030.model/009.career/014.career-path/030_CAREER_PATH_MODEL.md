# ============================================================
# CAREER PATH
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for career path structures.

# 2. CORE ENTITIES

- career_path_definition
- career_step
- path_requirement
- career_path_status

# 3. STATE MODEL

career_path_definition:
- career_path_definition_id
- path_code
- path_scope
- path_type_code
- path_status

career_step:
- career_step_id
- career_path_definition_id
- step_code
- step_order
- step_status

path_requirement:
- path_requirement_id
- career_path_definition_id
- requirement_type_code
- requirement_value
- requirement_status

career_path_status:
- career_path_status_id
- career_path_definition_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- step and requirement must belong to one career path definition
- path scope must be explicit
- step order must be deterministic
- hidden path mutation is prohibited

