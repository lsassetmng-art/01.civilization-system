# ============================================================
# EXAM SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for exam system structures.

# 2. CORE ENTITIES

- exam_definition
- exam_session
- exam_attempt
- exam_result

# 3. STATE MODEL

exam_definition:
- exam_definition_id
- exam_code
- exam_type_code
- exam_scope
- exam_status

exam_session:
- exam_session_id
- exam_definition_id
- session_code
- scheduled_at
- session_status

exam_attempt:
- exam_attempt_id
- exam_session_id
- examinee_scope
- attempt_status
- attempted_at

exam_result:
- exam_result_id
- exam_attempt_id
- result_code
- score_value
- result_status

# 4. INTEGRITY RULES

- session must belong to one exam definition
- attempt must preserve session and examinee scope
- result must reference one attempt
- hidden result mutation is prohibited

