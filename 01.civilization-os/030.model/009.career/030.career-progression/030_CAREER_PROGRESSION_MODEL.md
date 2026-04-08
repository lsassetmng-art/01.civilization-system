# ============================================================
# CAREER PROGRESSION
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for career progression structures.

# 2. CORE ENTITIES

- career_progression_record
- progression_event
- progression_state
- progression_result

# 3. STATE MODEL

career_progression_record:
- career_progression_record_id
- subject_scope
- progression_scope
- progression_status
- opened_at

progression_event:
- progression_event_id
- career_progression_record_id
- event_type_code
- event_value
- event_status

progression_state:
- progression_state_id
- career_progression_record_id
- state_code
- state_level
- state_status

progression_result:
- progression_result_id
- career_progression_record_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- event, state, and result must belong to one progression record
- subject and progression scope must be explicit
- state level changes must be attributable
- hidden progression mutation is prohibited

