# ============================================================
# STREAMING OS NOTIFICATION AND EVENT API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. NOTIFICATION LIST API
# ============================================================

endpoint_intent:
- read visible notifications for recipient

request_payload:
- actor_civilization_id
- notification_category_filter
  optional:
  - live_start
  - follow_event
  - publish_event
  - review_outcome
  - ranking_event
  - moderation_event
  - restoration_event
- unread_only_flag
  optional
- limit
  optional
- offset
  optional

response_payload:
- notifications:
  - notification_record_id
  - notification_category
  - notification_title
  - notification_body
    nullable
  - read_flag
  - created_at
- generated_at

# ============================================================
# 2. NOTIFICATION READ API
# ============================================================

endpoint_intent:
- mark notification as read or unread

request_payload:
- actor_civilization_id
- notification_record_id
- read_flag

response_payload:
- notification_record_id
- read_flag
- updated_at

# ============================================================
# 3. PLATFORM EVENT DETAIL API
# ============================================================

endpoint_intent:
- read platform event detail

request_payload:
- actor_civilization_id
- platform_event_record_id

response_payload:
- platform_event_record_id
- event_category
- target_type
  nullable
- target_id
  nullable
- event_note
  nullable
- created_at

# ============================================================
# 4. REVIEW ALERT LIST API
# ============================================================

endpoint_intent:
- read review alerts and escalation alerts

request_payload:
- actor_civilization_id
- alert_scope
  - review_alert
  - escalation_alert
  - all
- active_only_flag
  optional

response_payload:
- review_alerts:
  - review_alert_record_id
  - review_queue_item_id
    nullable
  - alert_status
  - created_at
- escalation_alerts:
  - escalation_alert_record_id
  - review_queue_item_id
    nullable
  - escalation_stage
  - escalation_status
  - created_at

