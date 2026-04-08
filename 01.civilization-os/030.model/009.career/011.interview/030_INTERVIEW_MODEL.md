# ============================================================
# INTERVIEW
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for interview structures.

# 2. CORE ENTITIES

- interview_session
- interview_stage
- interview_participant
- interview_result

# 3. STATE MODEL

interview_session:
- interview_session_id
- job_posting_id
- session_scope
- session_status
- scheduled_at

interview_stage:
- interview_stage_id
- interview_session_id
- stage_code
- stage_type_code
- stage_status

interview_participant:
- interview_participant_id
- interview_session_id
- participant_scope
- participant_role_code
- participant_status

interview_result:
- interview_result_id
- interview_session_id
- result_code
- result_reason
- result_status

# 4. INTEGRITY RULES

- stage and participant must belong to one interview session
- session and participant scope must be explicit
- result must reference one interview session
- hidden interview-result mutation is prohibited

