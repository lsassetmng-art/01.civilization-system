# ============================================================
# MODERATION NOTIFICATION API TRANSPORT READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K4 readiness for later API transport design.

endpoints_in_scope:
- create_comment_record
- create_report_record
- update_comment_moderation_state
- create_appeal_record
- decide_restoration_record
- list_notifications
- update_notification_read_state
- get_platform_event_detail
- list_review_alerts

meaning_level_ready_items:
- moderation mutation endpoint meaning is closed
- notification list/read-state meaning is closed
- platform event detail meaning is closed
- review alert listing meaning is closed
- recipient/runtime visibility separation is closed

transport_precision_open:
- exact HTTP method
- exact path
- exact RPC naming
- exact auth carrier placement
- exact error-to-status mapping
- exact mutation serialization
- exact list filter serialization
- exact detail projection serialization

transport_risk_notes:
- do not expose raw review workspace or delivery runtime internals
- do not flatten review alerts into generic notifications
- do not transport moderation-only state through end-user write paths
- do not bypass auditable mutation semantics

recommended_future_order:
1. lock request/response field casing
2. lock auth carrier placement
3. lock list and mutation serialization shapes
4. lock error/status mapping
5. run transport review against K4 decision pack
