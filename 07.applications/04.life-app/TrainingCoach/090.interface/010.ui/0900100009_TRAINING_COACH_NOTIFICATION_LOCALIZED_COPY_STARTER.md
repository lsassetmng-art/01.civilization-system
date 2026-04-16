# ============================================================
# TRAINING COACH NOTIFICATION LOCALIZED COPY STARTER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - 通知の実文言スターターを key 単位で整理する
  - title / body / action label の初期候補を台帳化する
  - safety notification を最優先で確定しやすくする

ledger_columns:
  - message_key
  - notification_code
  - part
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - note

starter_rows:

- message_key: TC_NOTI_TC-NOTI-0001_title
  notification_code: TC-NOTI-0001
  part: title
  meaning_summary: 今日の予定運動リマインドのタイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: support tone

- message_key: TC_NOTI_TC-NOTI-0001_body
  notification_code: TC-NOTI-0001
  part: body
  meaning_summary: 今日の予定運動リマインド本文
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: pressure-free

- message_key: TC_NOTI_TC-NOTI-0001_action_open
  notification_code: TC-NOTI-0001
  part: action
  meaning_summary: リマインドから開くアクション
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: short label

- message_key: TC_NOTI_TC-NOTI-0002_title
  notification_code: TC-NOTI-0002
  part: title
  meaning_summary: streak励まし通知タイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: guilt-free

- message_key: TC_NOTI_TC-NOTI-0002_body
  notification_code: TC-NOTI-0002
  part: body
  meaning_summary: streak励まし通知本文
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: soft encouragement

- message_key: TC_NOTI_TC-NOTI-0003_title
  notification_code: TC-NOTI-0003
  part: title
  meaning_summary: 未実施フォロー通知タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: no blame

- message_key: TC_NOTI_TC-NOTI-0003_body
  notification_code: TC-NOTI-0003
  part: body
  meaning_summary: 未実施フォロー通知本文
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: gentle follow-up

- message_key: TC_NOTI_TC-NOTI-0003_action_dismiss
  notification_code: TC-NOTI-0003
  part: action
  meaning_summary: フォロー通知を閉じるアクション
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: optional action

- message_key: TC_NOTI_TC-NOTI-0004_title
  notification_code: TC-NOTI-0004
  part: title
  meaning_summary: 休息推奨通知タイトル
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: safety-first

- message_key: TC_NOTI_TC-NOTI-0004_body
  notification_code: TC-NOTI-0004
  part: body
  meaning_summary: 休息推奨通知本文
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  note: safety-first wording

- message_key: TC_NOTI_TC-NOTI-0004_action_rest
  notification_code: TC-NOTI-0004
  part: action
  meaning_summary: 休息寄りアクションラベル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: calm wording

- message_key: TC_NOTI_TC-NOTI-0005_title
  notification_code: TC-NOTI-0005
  part: title
  meaning_summary: Premium ヒント通知タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: non-pushy

- message_key: TC_NOTI_TC-NOTI-0005_body
  notification_code: TC-NOTI-0005
  part: body
  meaning_summary: Premium ヒント通知本文
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: truthful and soft

review_priority:
  - TC-NOTI-0004 body/title/action
  - TC-NOTI-0001 title/body/action
  - TC-NOTI-0003 title/body
  - TC-NOTI-0002 title/body
  - TC-NOTI-0005 title/body
