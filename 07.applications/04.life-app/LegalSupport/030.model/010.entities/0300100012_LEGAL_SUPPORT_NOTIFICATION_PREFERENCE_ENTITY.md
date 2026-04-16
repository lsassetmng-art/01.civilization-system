# ============================================================
# LEGAL SUPPORT NOTIFICATION PREFERENCE ENTITY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  table_name: life.notification_preference

purpose:
  - ユーザー単位の通知設定を保持する
  - LegalSupport の通知強度と通知種別を個別制御する
  - deadline / document / consultation / family share を分ける

fields:
  - notification_preference_id: uuid
  - owner_user_id: uuid
  - notification_type: text
  - is_enabled: boolean
  - delivery_mode: text
  - timing_profile: text
  - quiet_hours_enabled: boolean
  - quiet_hours_start_local: text|null
  - quiet_hours_end_local: text|null
  - created_at: timestamptz
  - updated_at: timestamptz
  - deleted_at: timestamptz|null

enums:
  notification_type:
    - deadline_pre_alert
    - same_day_alert
    - unresolved_document_alert
    - next_consultation_reminder
    - family_share_update_alert
    - weekly_digest
  delivery_mode:
    - in_app
    - push
    - in_app_and_push
  timing_profile:
    - minimal
    - standard
    - intensive

rules:
  - owner_user_id + notification_type の組を基本一意とする
  - quiet hours は local time で扱う
  - deleted_at is null を active とする
