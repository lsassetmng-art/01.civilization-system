# ============================================================
# LEGAL SUPPORT NOTIFICATION TIMING MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: operations
subdomain: support
schema: life

notification_principles:
  - 通知は控えめを基本とする
  - 緊急度と期限種別で通知強度を変える
  - Free は基本通知、有料は強化通知とする
  - 家族共有通知は共有対象案件に限定する

notification_types:

  deadline_pre_alert:
    target_entity: deadline_item
    purpose:
      - 重要期限の事前確認
    default_trigger:
      - 7_days_before
      - 1_day_before
    free:
      enabled: basic
      timing:
        - 1_day_before
    plus_family:
      enabled: advanced
      timing:
        - 7_days_before
        - 3_days_before
        - 1_day_before
        - same_day_morning

  same_day_alert:
    target_entity: deadline_item
    purpose:
      - 当日対応の抜け漏れ防止
    free:
      enabled: true
      timing:
        - same_day_morning
    plus_family:
      enabled: true
      timing:
        - same_day_morning
        - 2_hours_before_optional

  unresolved_document_alert:
    target_entity: document_item
    purpose:
      - 未取得・未提出書類の見直し
    free:
      enabled: false
    plus_family:
      enabled: true
      timing:
        - weekly_digest
        - 3_days_before_related_deadline_if_exists

  next_consultation_reminder:
    target_entity: consultation_note / deadline_item
    purpose:
      - 次回相談前の準備促進
    free:
      enabled: basic
      timing:
        - 1_day_before_if_deadline_exists
    plus_family:
      enabled: advanced
      timing:
        - 3_days_before_if_deadline_exists
        - 1_day_before_if_deadline_exists
        - same_day_morning_if_deadline_exists

  family_share_update_alert:
    target_entity: legal_case
    purpose:
      - 共有案件更新の把握
    free:
      enabled: false
    plus_family:
      enabled: true
      timing:
        - near_realtime_batched
        - daily_digest_optional

timing_definitions:
  7_days_before:
    description:
      - 期限日の7日前
  3_days_before:
    description:
      - 期限日の3日前
  1_day_before:
    description:
      - 期限日の前日
  same_day_morning:
    description:
      - 期限日当日午前
  2_hours_before_optional:
    description:
      - 期限の2時間前（任意設定）
  weekly_digest:
    description:
      - 週1回まとめ通知
  near_realtime_batched:
    description:
      - 即時ではなく短時間バッチで集約通知
  daily_digest_optional:
    description:
      - 1日1回まとめ通知（任意）

suppression_rules:
  - archived case には通知しない
  - completed case には通常通知しない
  - notification_enabled=false の deadline_item には通知しない
  - same_day_alert は重複送信しすぎない
