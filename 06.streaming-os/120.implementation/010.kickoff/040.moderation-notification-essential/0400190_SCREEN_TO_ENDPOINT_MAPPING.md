# ============================================================
# K4 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: moderation-notification-essential
prepared_by: Zero
owner: Boss

purpose:
Maps K4-level screens and UI entry points to moderation /
notification canonical endpoints.

screen_mapping:

review_queue_home:
- list_review_alerts

human_review_task_detail:
- list_review_alerts

moderation_decision_confirm:
- decide_restoration_record

report_queue:
- create_report_record

report_detail:
- create_report_record

comment_moderation_queue:
- update_comment_moderation_state

comment_moderation_detail:
- update_comment_moderation_state

appeal_queue:
- create_appeal_record

appeal_detail:
- create_appeal_record

restoration_queue:
- decide_restoration_record

restoration_detail:
- decide_restoration_record

notification_inbox_home:
- list_notifications

notification_detail:
- get_platform_event_detail
- update_notification_read_state

creator_notification_list:
- list_notifications

viewer_notification_list:
- list_notifications

review_alert_list:
- list_review_alerts

review_alert_detail:
- get_platform_event_detail

mapping_rules:
- moderation screens must not collapse into general notification list semantics
- review alert detail uses event/detail projection, not raw delivery-state internals
- notification detail must not expose raw retry or broker state
- comment/report/appeal/restoration flows remain distinct even if some blocks are shared

out_of_scope_note:
- creator comment-post submission outside essential moderation ops remains future refinement
- escalation_alert_detail screen exists in frozen inventory but exact endpoint binding can refine later
