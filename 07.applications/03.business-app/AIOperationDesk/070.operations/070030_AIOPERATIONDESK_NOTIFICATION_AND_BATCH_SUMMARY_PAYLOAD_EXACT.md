# ============================================================
# AI OPERATION DESK NOTIFICATION AND BATCH SUMMARY PAYLOAD EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

notification_payloads:

review_pending:
  fields:
    - work_order_id
    - supported_app_code
    - lane_type
    - work_type_code
    - review_reason_code
    - created_at

approval_pending:
  fields:
    - work_order_id
    - supported_app_code
    - lane_type
    - work_type_code
    - approval_reason_code
    - created_at

confirmation_required:
  fields:
    - work_order_id
    - supported_app_code
    - confirmation_summary
    - created_at

execution_failed:
  fields:
    - work_order_id
    - execution_job_id
    - failure_code
    - failure_summary
    - retryable_flag
    - created_at

retry_scheduled:
  fields:
    - work_order_id
    - retry_plan_id
    - next_retry_at
    - retry_count
    - created_at

completed_with_warning:
  fields:
    - work_order_id
    - supported_app_code
    - warning_summary
    - created_at

completed_summary_available:
  fields:
    - summary_batch_id
    - batch_type
    - batch_window_end_at
    - created_at

batch_summary_payloads:

execution_summary:
  item_fields:
    - work_order_id
    - supported_app_code
    - lane_type
    - work_order_status
    - item_summary
    - severity_level

review_summary:
  item_fields:
    - work_order_id
    - supported_app_code
    - review_status
    - item_summary
    - severity_level

failure_summary:
  item_fields:
    - work_order_id
    - failure_code
    - failure_summary
    - retryable_flag
    - severity_level

output_summary:
  item_fields:
    - work_order_id
    - output_type
    - destination_type
    - item_summary
    - severity_level

audit_digest:
  item_fields:
    - work_order_id
    - event_type
    - event_summary
    - actor_type
    - severity_level

rules:
- AI Operation Desk uses batch summaries only
- PocketSecretary remains realtime summary / response side
- review / confirmation / error notifications should bridge to LINE etc
