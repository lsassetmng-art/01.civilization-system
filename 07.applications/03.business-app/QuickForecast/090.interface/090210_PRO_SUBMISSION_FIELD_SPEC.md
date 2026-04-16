# ============================================================
# PRO SUBMISSION FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval/submission field structure.

approval_fields:
- approval_required_flag
- approval_state
- approver_identity
- request_comment
- response_comment

submission_fields:
- submission_target_type
- submission_target_id
- payload_summary
- submission_readiness
- last_submission_result
- retry_state

actions:
- request_approval
- prepare_submission
- submit
- retry_submission
