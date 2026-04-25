# ============================================================
# MODERATION NOTIFICATION PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

mapping:
- review pipeline payload families -> review_queue_items / ai_review_jobs / human_review_tasks / review_decision_records / review_dimension_results / re_review_requests / restoration_review_records / review_alert_records / escalation_alert_records
- moderation payload families -> comment_records / comment_moderation_states / report_records / appeal_records / moderation_restoration_records
- notification payload families -> platform_event_records / notification_records / notification_delivery_states

memo_notes:
- review alert projection is not a raw delivery-state mirror
- notification detail is not a raw platform_event base-table dump
