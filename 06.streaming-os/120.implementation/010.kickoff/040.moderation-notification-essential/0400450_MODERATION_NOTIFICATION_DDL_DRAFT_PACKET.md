# ============================================================
# MODERATION NOTIFICATION DDL DRAFT PACKET
# ============================================================

status: canonical-ddl-draft-packet
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This packet defines the DDL draft review body for K4 moderation-notification-essential.

packet_state:
- draft_only
- pending_sato_db_review
- no_sql_executed
- not_approved_for_apply

included_documents:
- 0400460_MODERATION_NOTIFICATION_BASE_TABLE_DDL_DRAFT_REVIEW_MEMO.md
- 0400470_MODERATION_NOTIFICATION_INDEX_DDL_DRAFT_REVIEW_MEMO.md
- 0400480_MODERATION_NOTIFICATION_PROJECTION_POLICY_SQL_DRAFT_REVIEW_MEMO.md

draft_scope:
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

review_intent:
- confirm type choices
- confirm evidence and actor-linkage strategy
- confirm notification/runtime boundary support
- confirm minimal index strategy
- confirm recipient-safe / role-safe / runtime-only projection split
