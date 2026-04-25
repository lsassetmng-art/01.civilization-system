# ============================================================
# MODERATION NOTIFICATION INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

review_queue_items:
- idx_review_queue_items_priority_class_updated_at
  - columns:
    - priority_class
    - updated_at
- idx_review_queue_items_target
  - columns:
    - target_type
    - target_id

comment_records:
- idx_comment_records_target
  - columns:
    - target_type
    - target_id

report_records:
- idx_report_records_target
  - columns:
    - target_type
    - target_id

appeal_records:
- idx_appeal_records_target
  - columns:
    - target_type
    - target_id

notification_records:
- idx_notification_records_recipient_created_at
  - columns:
    - recipient_principal_id
    - created_at

review_alert_records:
- idx_review_alert_records_priority_updated_at
  - columns:
    - priority_class
    - updated_at

escalation_alert_records:
- idx_escalation_alert_records_priority_updated_at
  - columns:
    - priority_class
    - updated_at

index_strategy_note:
- keep first-pass index set focused on queue lookup, target lookup, recipient inbox lookup, and alert urgency lookup
- avoid speculative partial indexes at this stage
- keep runtime-only delivery behavior from dictating premature index complexity

open_review_points:
- whether notification_records also needs read_flag support indexing
- whether report and appeal target indexes should be composite with created_at
- whether review queue needs additional queue_state support indexing
- whether delivery state needs any direct index in first draft
