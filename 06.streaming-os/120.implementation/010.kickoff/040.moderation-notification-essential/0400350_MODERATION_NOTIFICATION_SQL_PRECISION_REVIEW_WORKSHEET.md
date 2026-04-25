# ============================================================
# MODERATION NOTIFICATION SQL PRECISION REVIEW WORKSHEET
# ============================================================

status: canonical-review-worksheet
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This worksheet is the working review sheet for K4 SQL precision review.

review_scope:
- review_queue_items
- ai_review_jobs
- human_review_tasks
- review_decision_records
- review_dimension_results
- re_review_requests
- restoration_review_records
- comment_records
- comment_moderation_states
- report_records
- appeal_records
- moderation_restoration_records
- platform_event_records
- notification_records
- notification_delivery_states
- review_alert_records
- escalation_alert_records

review_mode:
- precision review only
- no execution
- no implementation coding

reviewer_rule:
- Sato(DB reviewer) participation required

review_pipeline_review_items:
- exact FK strategy across review queue dependent tables
  - decision_status:
  - reviewer_note:
- exact actor linkage strategy for assigned reviewer and decision actor
  - decision_status:
  - reviewer_note:
- exact check implementation for job/task/decision/result/request/review states
  - decision_status:
  - reviewer_note:
- exact timestamp strategy for queue urgency/due tracking where needed
  - decision_status:
  - reviewer_note:
- exact limited-outcome projection support strategy
  - decision_status:
  - reviewer_note:

moderation_review_items:
- exact field type strategy for comment_body
  - decision_status:
  - reviewer_note:
- exact evidence ref storage strategy for reports and appeals
  - decision_status:
  - reviewer_note:
- exact check implementation for moderation_state
  - decision_status:
  - reviewer_note:
- exact check implementation for report_reason_code
  - decision_status:
  - reviewer_note:
- exact check implementation for appeal_reason_code
  - decision_status:
  - reviewer_note:
- exact check implementation for decision_state
  - decision_status:
  - reviewer_note:
- exact actor linkage strategy for author/reporter/requester
  - decision_status:
  - reviewer_note:

notification_review_items:
- exact event_type and notification_type check implementation
  - decision_status:
  - reviewer_note:
- exact preview/detail storage split
  - decision_status:
  - reviewer_note:
- exact read_flag storage/default strategy
  - decision_status:
  - reviewer_note:
- exact delivery_state storage and visibility strategy
  - decision_status:
  - reviewer_note:
- exact storage distinction for review_alert vs escalation_alert
  - decision_status:
  - reviewer_note:

index_and_constraint_review_items:
- minimal index set for review queue lookup
  - decision_status:
  - reviewer_note:
- minimal index set for moderation target lookup
  - decision_status:
  - reviewer_note:
- minimal index set for recipient notification lookup
  - decision_status:
  - reviewer_note:
- minimal index set for alert priority and updated_at lookup
  - decision_status:
  - reviewer_note:
- partial index now vs later
  - decision_status:
  - reviewer_note:

policy_projection_review_items:
- exact recipient-safe notification detail projection strategy
  - decision_status:
  - reviewer_note:
- exact review-alert role-safe projection strategy
  - decision_status:
  - reviewer_note:
- exact runtime-only delivery visibility strategy
  - decision_status:
  - reviewer_note:
- exact moderation-only mutation boundary enforcement strategy
  - decision_status:
  - reviewer_note:

exit_condition:
- all blocking SQL precision questions marked resolved or explicitly deferred with rationale
