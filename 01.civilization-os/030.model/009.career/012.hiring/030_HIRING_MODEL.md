# ============================================================
# HIRING
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for hiring structures.

# 2. CORE ENTITIES

- hiring_case
- hiring_candidate
- hiring_decision
- hiring_record

# 3. STATE MODEL

hiring_case:
- hiring_case_id
- job_posting_id
- employer_scope
- hiring_status
- opened_at

hiring_candidate:
- hiring_candidate_id
- hiring_case_id
- candidate_scope
- candidate_status
- applied_at

hiring_decision:
- hiring_decision_id
- hiring_case_id
- decision_code
- decision_reason
- decision_status

hiring_record:
- hiring_record_id
- hiring_case_id
- hired_scope
- record_status
- recorded_at

# 4. INTEGRITY RULES

- candidate, decision, and record must belong to one hiring case
- employer and candidate scope must be explicit
- decision and record state must be explicit
- hidden hiring mutation is prohibited

