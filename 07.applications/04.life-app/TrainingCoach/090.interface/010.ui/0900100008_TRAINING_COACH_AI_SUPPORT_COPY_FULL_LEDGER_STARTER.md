# ============================================================
# TRAINING COACH AI SUPPORT COPY FULL LEDGER STARTER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - AI support 用 message key と用途を台帳化する
  - support template catalog と copy 管理を接続する
  - safety 系と通常支援系を分離する

ledger_columns:
  - message_key
  - template_group
  - use_case
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - note

starter_rows:

- message_key: TC_AI_TPL_0001_intro
  template_group: product_help
  use_case: plan_creation_help
  meaning_summary: プラン作成案内の導入文
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: concise instruction tone

- message_key: TC_AI_TPL_0002_check_settings
  template_group: product_help
  use_case: notification_setting_help
  meaning_summary: 通知設定確認の案内
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: app + os settings hint

- message_key: TC_AI_TPL_0003_reassure
  template_group: continuity_support
  use_case: streak_lost_reassurance
  meaning_summary: streak切れ後の安心づけ
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: guilt-free wording

- message_key: TC_AI_TPL_0003_small_restart
  template_group: continuity_support
  use_case: streak_lost_reassurance
  meaning_summary: 小さな再開提案
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: short-duration suggestion

- message_key: TC_AI_TPL_0004_low_motivation_support
  template_group: continuity_support
  use_case: low_motivation_support
  meaning_summary: やる気低下時の支援文
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: flexible tone

- message_key: TC_AI_TPL_0005_stop_if_pain
  template_group: safety_redirect
  use_case: pain_or_discomfort
  meaning_summary: 痛み・違和感時の中止検討文
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  note: safety must review

- message_key: TC_AI_TPL_0005_medical_consideration
  template_group: safety_redirect
  use_case: pain_or_discomfort
  meaning_summary: 症状継続時の医療相談検討文
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  note: safety must review

- message_key: TC_AI_TPL_0006_rest_today
  template_group: safety_redirect
  use_case: bad_condition_today
  meaning_summary: 今日は休息を優先する案内
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: calm tone

- message_key: TC_AI_TPL_0007_premium_difference
  template_group: billing_help
  use_case: premium_difference
  meaning_summary: FreeとPremiumの違い説明
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: truthful copy

- message_key: TC_AI_TPL_0008_restore_guidance
  template_group: billing_help
  use_case: billing_not_reflected
  meaning_summary: 課金復元・同期確認案内
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: platform handoff possible

- message_key: TC_AI_TPL_0009_sync_recheck
  template_group: troubleshooting
  use_case: bodymetrics_sync_issue
  meaning_summary: BodyMetrics連携再確認案内
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: source-first troubleshooting

- message_key: TC_AI_TPL_0010_retry_loading
  template_group: troubleshooting
  use_case: guide_not_loading
  meaning_summary: ガイド再読み込み案内
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: content availability fallback

ledger_rules:
  - critical / elevated safety_level は先に確定する
  - AI copy は FAQ / support routing と矛盾しない
  - premium explanation は product truthfulness review 必須
