# ============================================================
# TRAINING COACH MESSAGE KEY EXPANSION LEDGER CORE SET
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - starter ledger を拡張し、core flow を支える key 群を増やす
  - full localized copy catalog の前段として中核キーを揃える

ledger_columns:
  - message_key
  - domain
  - context
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - review_note

core_set:

- message_key: TC_UI_onboarding_welcome_title
  domain: ui
  context: onboarding
  meaning_summary: オンボーディング開始タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: onboarding core

- message_key: TC_UI_onboarding_goal_step_title
  domain: ui
  context: onboarding
  meaning_summary: 目標選択ステップタイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: onboarding core

- message_key: TC_UI_onboarding_level_step_title
  domain: ui
  context: onboarding
  meaning_summary: 難易度設定ステップタイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: onboarding core

- message_key: TC_UI_settings_notification_title
  domain: ui
  context: settings
  meaning_summary: 通知設定タイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: settings core

- message_key: TC_UI_guide_viewer_title
  domain: ui
  context: guide_viewer
  meaning_summary: ガイド画面タイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: guide core

- message_key: TC_EMPTY_dashboard_no_session
  domain: empty
  context: dashboard
  meaning_summary: 今日のセッションがない時の空状態
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: empty state core

- message_key: TC_EMPTY_guide_viewer_no_content
  domain: empty
  context: guide_viewer
  meaning_summary: ガイド未登録時の空状態
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: content gap handling

- message_key: TC_ERROR_TC-DATA-0002_message
  domain: error
  context: common
  meaning_summary: session not found
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: common error

- message_key: TC_ERROR_TC-SAFE-0002_message
  domain: error
  context: execution
  meaning_summary: 高疲労による制限
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  review_note: safety-sensitive

- message_key: TC_FAQ_0001_Q
  domain: faq
  context: faq
  meaning_summary: TrainingCoachとは何か
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: faq starter

- message_key: TC_FAQ_0001_A
  domain: faq
  context: faq
  meaning_summary: TrainingCoach説明回答
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: faq starter

- message_key: TC_FAQ_0007_Q
  domain: faq
  context: faq
  meaning_summary: 体調が悪いときの質問
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  review_note: safety faq

- message_key: TC_FAQ_0007_A
  domain: faq
  context: faq
  meaning_summary: 体調不良時の回答
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  review_note: safety faq

- message_key: TC_AI_support_reassure_restart
  domain: ai_support
  context: ai_chat
  meaning_summary: streak切れ後の再開支援
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: ai template alignment

- message_key: TC_AI_support_safety_redirect
  domain: ai_support
  context: ai_chat
  meaning_summary: 痛み・違和感時の安全リダイレクト
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  review_note: ai safety

- message_key: TC_SHARE_summary_scope_basic_label
  domain: share
  context: future_share
  meaning_summary: 基本要約共有ラベル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: future feature

- message_key: TC_SHARE_revoked_message
  domain: share
  context: future_share
  meaning_summary: 共有解除メッセージ
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  review_note: future feature

ledger_rules:
  - safety critical keys を先に翻訳確定する
  - future share keys は後順位でよい
  - AI support keys は product behavior change と同期して更新する
