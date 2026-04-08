# ============================================================
# STORY RESOLUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story resolutions.

# 2. CORE ENTITIES

- story_resolution
- resolution_condition
- resolution_result
- resolution_status

# 3. STATE MODEL

story_resolution:
- story_resolution_id
- story_definition_id
- resolution_code
- resolution_scope
- resolution_status

resolution_condition:
- resolution_condition_id
- story_resolution_id
- condition_type_code
- condition_value
- condition_status

resolution_result:
- resolution_result_id
- story_resolution_id
- result_code
- result_value
- result_status

resolution_status:
- resolution_status_id
- story_resolution_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- condition and result must belong to one resolution
- resolution scope must be explicit
- active and closed state must be explicit
- hidden resolution mutation is prohibited

