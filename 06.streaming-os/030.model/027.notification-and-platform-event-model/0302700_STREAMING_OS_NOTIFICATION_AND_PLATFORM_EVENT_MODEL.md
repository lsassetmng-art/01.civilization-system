# ============================================================
# STREAMING OS NOTIFICATION AND PLATFORM EVENT MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: notification-and-platform-event-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- notification_record
- notification_delivery_state
- platform_event_record
- review_alert_record
- escalation_alert_record

# ============================================================
# 2. NOTIFICATION_RECORD
# ============================================================

Recommended meanings:
- notification_record_id
- recipient_subject_id
- notification_category
  - live_start
  - follow_event
  - publish_event
  - review_outcome
  - ranking_event
  - moderation_event
  - restoration_event
- notification_title
- notification_body
  nullable
- read_flag
- created_at
- updated_at

# ============================================================
# 3. NOTIFICATION_DELIVERY_STATE
# ============================================================

Recommended meanings:
- notification_delivery_state_id
- notification_record_id
- delivery_status
  - pending
  - delivered
  - failed
  - dismissed
- delivered_at
  nullable
- updated_at

# ============================================================
# 4. PLATFORM_EVENT_RECORD
# ============================================================

Recommended meanings:
- platform_event_record_id
- event_category
  - live_start
  - follow_event
  - publish_event
  - review_event
  - moderation_event
  - ranking_event
  - restoration_event
- target_type
  nullable
- target_id
  nullable
- event_note
  nullable
- created_at

# ============================================================
# 5. REVIEW_ALERT_RECORD / ESCALATION_ALERT_RECORD
# ============================================================

Recommended meanings:
- review_alert_record_id
- review_queue_item_id
  nullable
- alert_status
  - active
  - acknowledged
  - closed
- created_at
- updated_at

Recommended meanings for escalation:
- escalation_alert_record_id
- review_queue_item_id
  nullable
- escalation_stage
  - ai_to_human
  - overdue_review
  - restoration_required
- escalation_status
  - active
  - acknowledged
  - closed
- created_at
- updated_at

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- notification existence
- notification delivery state
- platform event existence
- review alerts
- escalation alerts

Creator,
viewer,
and operator visible events
must remain distinguishable.

