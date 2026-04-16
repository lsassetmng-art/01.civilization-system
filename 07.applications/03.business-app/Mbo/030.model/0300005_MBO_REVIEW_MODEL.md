# ============================================================
# MBO REVIEW MODEL
# ============================================================

status: canonical
application: Mbo
layer: model
owner: Boss
prepared_by: Zero

entities:
- review_schedule
- review_log

review_schedule_fields:
- review_schedule_id
- objective_id
- review_type
- planned_review_at
- reviewer_user_id
- status

review_log_fields:
- review_log_id
- objective_id
- review_type
- reviewer_user_id
- reviewed_at
- review_comment
- review_result
