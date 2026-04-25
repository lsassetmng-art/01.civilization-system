# ============================================================
# K4 SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: moderation-notification-essential
phase: K4 moderation-notification-essential
prepared_by: Zero
owner: Boss

scope_in:
- streaming-review-pipeline
- streaming-moderation
- streaming-notification
- streaming-api-contracts portion for moderation / notification essential
- moderation / notification auth boundary
- moderation / notification screen-to-endpoint mapping

scope_out:
- corporate
- monetization
- ranking / ad
- Persona-side SQL execution

canonical_endpoints_in_scope:
- create_comment_record
- create_report_record
- update_comment_moderation_state
- create_appeal_record
- decide_restoration_record
- list_notifications
- update_notification_read_state
- get_platform_event_detail
- list_review_alerts

done_definition:
- review pipeline payload exactness fixed
- moderation payload exactness fixed
- notification payload exactness fixed
- review pipeline table-column exactness fixed
- moderation table-column exactness fixed
- notification table-column exactness fixed
- moderation / notification auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- review pipeline gets collapsed into moderation outcome records
- moderation state becomes end-user writable without authority boundary
- review alert becomes indistinguishable from general notification
- delivery / retry internals leak into public notification meaning
