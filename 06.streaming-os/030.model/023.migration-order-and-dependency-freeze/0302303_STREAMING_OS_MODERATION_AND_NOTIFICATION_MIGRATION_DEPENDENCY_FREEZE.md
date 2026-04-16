# ============================================================
# STREAMING OS MODERATION AND NOTIFICATION MIGRATION DEPENDENCY FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

moderation_and_notification_groups_in_order:
- group_08_review_pipeline
- group_09_comment_report_appeal
- group_10_notifications_and_alerts

order_rule:
- review pipeline tables should precede notification alert tables
  because alerts may refer to review queue items
- comment/report/appeal tables may follow core asset/channel groups
  because targets may point at assets,
  sessions,
  comments,
  channels,
  or creators
- notification and alert tables should come after review pipeline
  and may also follow moderation tables

review_pipeline_tables:
- review_queue_items
- ai_review_jobs
- human_review_tasks
- review_decision_records
- review_dimension_results
- re_review_requests
- restoration_review_records

comment_report_appeal_tables:
- comment_records
- comment_moderation_states
- report_records
- appeal_records
- moderation_restoration_records

notification_tables:
- notification_records
- notification_delivery_states
- platform_event_records
- review_alert_records
- escalation_alert_records

freeze_rule:
- notification tables may reference operational ids indirectly,
  but core moderation/review decisions must not depend on notification existence
- restoration history must remain independent from alert delivery success/failure

