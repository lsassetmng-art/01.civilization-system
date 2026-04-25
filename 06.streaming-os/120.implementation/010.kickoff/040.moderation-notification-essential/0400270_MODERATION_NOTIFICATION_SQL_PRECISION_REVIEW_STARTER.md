# ============================================================
# MODERATION NOTIFICATION SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

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

precision_items:
- exact FK strategy across review pipeline families
- exact check set implementation for decision/task/job/alert states
- exact evidence ref storage strategy for reports/appeals
- exact audit and actor linkage strategy for moderation decisions
- exact projection strategy for recipient-safe notification detail
- exact runtime-only visibility strategy for delivery states

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
