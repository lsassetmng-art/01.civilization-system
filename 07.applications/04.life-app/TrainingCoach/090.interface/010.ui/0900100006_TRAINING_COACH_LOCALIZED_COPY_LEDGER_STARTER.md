# ============================================================
# TRAINING COACH LOCALIZED COPY LEDGER STARTER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - localized copy の初期台帳を作る
  - message key と用途の対応を見返しやすくする
  - full translation 前の管理土台にする

ledger_columns:
  - message_key
  - domain
  - screen_or_context
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - notes

starter_rows:

- message_key: TC_UI_dashboard_title
  domain: ui
  screen_or_context: dashboard
  meaning_summary: ダッシュボード画面タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: core screen

- message_key: TC_UI_today_plan_start_button
  domain: ui
  screen_or_context: today_plan
  meaning_summary: セッション開始ボタン
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: core action

- message_key: TC_UI_plan_editor_save_button
  domain: ui
  screen_or_context: plan_editor
  meaning_summary: プラン保存ボタン
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: core action

- message_key: TC_SAFE_TC_SAFE_001_text
  domain: safety
  screen_or_context: guide_viewer / execution
  meaning_summary: 無理のない範囲で行う注意
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  notes: safety core

- message_key: TC_SAFE_TC_SAFE_002_text
  domain: safety
  screen_or_context: execution
  meaning_summary: 痛みや違和感時の中止案内
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  notes: safety core

- message_key: TC_SAFE_TC_SAFE_004_text
  domain: safety
  screen_or_context: support / faq / execution
  meaning_summary: 症状継続時の医療相談検討
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  notes: safety redirect

- message_key: TC_NOTI_TC-NOTI-0001_body
  domain: notification
  screen_or_context: session reminder
  meaning_summary: 本日の予定運動リマインド本文
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: engagement core

- message_key: TC_NOTI_TC-NOTI-0004_body
  domain: notification
  screen_or_context: rest recommended
  meaning_summary: 休息推奨通知本文
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  notes: safety sensitive

- message_key: TC_BILLING_premium_hero_title
  domain: billing
  screen_or_context: premium_upgrade
  meaning_summary: Premium ヒーロータイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: must avoid exaggeration

- message_key: TC_BILLING_premium_feature_bodymetrics
  domain: billing
  screen_or_context: premium_upgrade
  meaning_summary: BodyMetrics連携説明
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: feature truthfulness required

- message_key: TC_EMPTY_today_plan_no_plan
  domain: empty
  screen_or_context: today_plan
  meaning_summary: プラン未作成時の空状態文言
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: empty state core

- message_key: TC_ERROR_TC-VAL-0001_message
  domain: error
  screen_or_context: common
  meaning_summary: 必須項目不足エラー
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  notes: common system message

ledger_rules:
  - critical safety_level は先に確定する
  - ui / error / empty は core flow 優先で埋める
  - premium copy は product truthfulness review 後に確定する
  - pending locale は fallback policy に従う
