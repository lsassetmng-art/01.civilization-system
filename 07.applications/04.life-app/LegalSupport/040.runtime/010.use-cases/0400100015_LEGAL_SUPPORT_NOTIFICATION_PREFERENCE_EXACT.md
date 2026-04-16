# ============================================================
# LEGAL SUPPORT NOTIFICATION PREFERENCE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

# ------------------------------------------------------------
# 1. list notification preferences
# ------------------------------------------------------------
list_notification_preferences:
  request:
    action: list_notification_preferences
    payload:
      owner_user_id: uuid
  response:
    items:
      - notification_preference_id: uuid
        notification_type: string
        is_enabled: boolean
        delivery_mode: string
        timing_profile: string
        quiet_hours_enabled: boolean
        quiet_hours_start_local: string|null
        quiet_hours_end_local: string|null

# ------------------------------------------------------------
# 2. upsert notification preference
# ------------------------------------------------------------
upsert_notification_preference:
  request:
    action: upsert_notification_preference
    payload:
      notification_type: enum[deadline_pre_alert, same_day_alert, unresolved_document_alert, next_consultation_reminder, family_share_update_alert, weekly_digest]
      is_enabled: boolean
      delivery_mode: enum[in_app, push, in_app_and_push]
      timing_profile: enum[minimal, standard, intensive]
      quiet_hours_enabled: boolean
      quiet_hours_start_local: string|null
      quiet_hours_end_local: string|null
  response:
    notification_preference:
      notification_preference_id: uuid
      notification_type: string
      is_enabled: boolean
      delivery_mode: string
      timing_profile: string
      quiet_hours_enabled: boolean
      quiet_hours_start_local: string|null
      quiet_hours_end_local: string|null
      updated_at: timestamptz

rules:
  - quiet_hours_enabled=false の場合、quiet hour fields は null でよい
  - family_share_update_alert は plus_family 前提
  - intensive は Free で制限してもよい
