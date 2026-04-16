# ============================================================
# SHIFT MANAGER NOTIFICATION SPECIFICATION
# ============================================================

status: draft-fixed-candidate
type: notification-specification
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager notifications exist to reliably deliver
published results and important changes
to permitted viewers.

principles:
1. notification targets are tied to published shifts only
2. no publication notification is sent from draft state
3. only permitted viewers may receive notifications
4. republication may trigger renewed notifications
5. failed delivery must be visible and retryable
6. read-state is UX support and not authority replacement

# ============================================================
# 2. PURPOSES
# ============================================================

purposes:
- announce new publication
- announce change/republication
- remind same-day work
- deliver urgent change quickly
- provide navigation path to target shift
- reduce missed-publication accidents

# ============================================================
# 3. TARGETS
# ============================================================

notification_targets:
- self
- team-shared viewers
- department-shared viewers
- management-scope viewers
- managers in allowed scope

must_not_receive:
- unauthorized third parties
- share-removed users
- access-disabled users
- authority-revoked users

# ============================================================
# 4. NOTIFICATION TYPES
# ============================================================

notification_types:
publish:
- purpose: new publication notice
- trigger: initial publish

republish:
- purpose: updated publication notice
- trigger: republish execution

same_day:
- purpose: same-day reminder
- trigger: day-of configured time

urgent_change:
- purpose: urgent changed schedule notice
- trigger: urgent flagged important near-term change

# ============================================================
# 5. CHANNEL POLICY
# ============================================================

initial_channels:
- in-app notification
- push notification

future_channels:
- LINE
- Slack
- SMS
- mail

initial_mvp_recommendation:
- in-app mandatory
- push recommended

# ============================================================
# 6. TIMING
# ============================================================

timing_rules:
publish:
- after publish completion
- sync or async queue allowed

republish:
- after republish completion

same_day:
- default = 1 hour before shift start

urgent_change:
- immediate delivery preferred

# ============================================================
# 7. CONTENT
# ============================================================

common_content_fields:
- notification_type
- title
- summary body
- target_date
- target_time
- office
- role
- deep link to related shift

example_titles:
publish:
- シフトが公開されました

republish:
- シフトが更新されました

same_day:
- 本日の勤務予定

urgent_change:
- 至急確認：勤務予定が変更されました

# ============================================================
# 8. DATA MODEL RELATION
# ============================================================

main_table:
- shift_notification

required_fields:
- notification_id
- notification_type
- target_person_id
- title
- delivery_status
- queued_at

recommended_extra_fields:
- urgent_flag
- deep_link_path
- payload_json
- related_shift_date
- related_visible_person_id

delivery_status_values:
- queued
- sent
- failed
- read

# ============================================================
# 9. GENERATION RULES
# ============================================================

generation_rules:
publish:
- publication created
- evaluate share/view scope
- queue notifications for allowed viewers

republish:
- new publication created
- reevaluate viewers
- queue republish notifications

same_day:
- extract day-of targets
- queue reminder

urgent_change:
- manager-side urgent action
- queue urgent notification

important_rule:
Users who cannot view the shift must not be notified.

# ============================================================
# 10. READ / RETRY POLICY
# ============================================================

read_policy:
- read-state supports unread count and organization
- read does not change access authority

retry_policy:
- failed notifications are retryable
- retry allowed only while target remains valid and visible
- retry_count should be tracked

# ============================================================
# 11. SCREEN RELATION
# ============================================================

related_screen:
- notification_center

screen_capabilities:
- list notifications
- show unread/read
- open target shift detail
- mark as read
- allow admin-side retry where permitted

# ============================================================
# 12. API RELATION
# ============================================================

related_apis:
- GET /api/shift-manager/v1/me/notifications
- POST /api/shift-manager/v1/me/notifications/{notification_id}/read
- POST /api/shift-manager/v1/notifications/{notification_id}/retry

future_api_candidates:
- POST /api/shift-manager/v1/publications/{publication_id}/notify
- GET /api/shift-manager/v1/publications/{publication_id}/notification-summary

# ============================================================
# 13. IMPORTANT DECISIONS
# ============================================================

important_points:
- notify only published states
- notify only permitted viewers
- failed notification must remain visible
- same_day default = 1 hour before shift start
- auto generation itself does not notify staff

# ============================================================
# 14. CONCLUSION
# ============================================================

Notification in ShiftManager is not merely optional decoration.
It is part of the delivery path
from publication to permitted viewers.

