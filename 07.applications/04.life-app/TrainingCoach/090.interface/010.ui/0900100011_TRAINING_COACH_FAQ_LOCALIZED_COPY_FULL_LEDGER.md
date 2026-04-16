# ============================================================
# TRAINING COACH FAQ LOCALIZED COPY FULL LEDGER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - FAQ の Q/A キーを一覧化する
  - help center taxonomy と一致する台帳を作る
  - safety FAQ を優先確定しやすくする

ledger_columns:
  - message_key
  - faq_code
  - part
  - category
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - note

starter_rows:

- message_key: TC_FAQ_0001_Q
  faq_code: FAQ-0001
  part: question
  category: getting_started
  meaning_summary: TrainingCoachとは何か
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: core intro faq

- message_key: TC_FAQ_0001_A
  faq_code: FAQ-0001
  part: answer
  category: getting_started
  meaning_summary: アプリ説明の回答
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: align with onboarding intro

- message_key: TC_FAQ_0002_Q
  faq_code: FAQ-0002
  part: question
  category: plans_and_goals
  meaning_summary: 初期プランは変えられるか
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: plan flexibility

- message_key: TC_FAQ_0002_A
  faq_code: FAQ-0002
  part: answer
  category: plans_and_goals
  meaning_summary: 初期プラン変更の回答
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: reassuring tone

- message_key: TC_FAQ_0003_Q
  faq_code: FAQ-0003
  part: question
  category: today_training
  meaning_summary: 途中でやめたらどうなるか
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: execution core

- message_key: TC_FAQ_0003_A
  faq_code: FAQ-0003
  part: answer
  category: today_training
  meaning_summary: 途中終了時の扱い
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: no guilt tone

- message_key: TC_FAQ_0004_Q
  faq_code: FAQ-0004
  part: question
  category: streak_and_progress
  meaning_summary: streak はどう計算されるか
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: progress clarity

- message_key: TC_FAQ_0004_A
  faq_code: FAQ-0004
  part: answer
  category: streak_and_progress
  meaning_summary: streak 計算の説明
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: avoid ambiguity

- message_key: TC_FAQ_0005_Q
  faq_code: FAQ-0005
  part: question
  category: notifications
  meaning_summary: 通知を止めたい / 変えたい
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: common issue

- message_key: TC_FAQ_0005_A
  faq_code: FAQ-0005
  part: answer
  category: notifications
  meaning_summary: 通知設定変更の回答
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: app + os settings aligned

- message_key: TC_FAQ_0006_Q
  faq_code: FAQ-0006
  part: question
  category: premium
  meaning_summary: Premium で何が増えるか
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: billing support

- message_key: TC_FAQ_0006_A
  faq_code: FAQ-0006
  part: answer
  category: premium
  meaning_summary: Premium 機能説明
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: truthful only

- message_key: TC_FAQ_0007_Q
  faq_code: FAQ-0007
  part: question
  category: safety
  meaning_summary: 体調が悪いときはどうすればよいか
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  note: safety faq

- message_key: TC_FAQ_0007_A
  faq_code: FAQ-0007
  part: answer
  category: safety
  meaning_summary: 体調不良時の回答
  priority: critical
  ja_jp_status: draft
  en_status: pending
  safety_level: critical
  note: safety review mandatory

- message_key: TC_FAQ_0008_Q
  faq_code: FAQ-0008
  part: question
  category: privacy_and_data
  meaning_summary: データはどこに保存されるか
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: data transparency

- message_key: TC_FAQ_0008_A
  faq_code: FAQ-0008
  part: answer
  category: privacy_and_data
  meaning_summary: データ保存先の回答
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: align with life schema policy

- message_key: TC_FAQ_0009_Q
  faq_code: FAQ-0009
  part: question
  category: sync_and_troubleshooting
  meaning_summary: BodyMetrics 連携が反映されない
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: troubleshooting

- message_key: TC_FAQ_0009_A
  faq_code: FAQ-0009
  part: answer
  category: sync_and_troubleshooting
  meaning_summary: BodyMetrics 反映遅延時の回答
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: source-first guidance

- message_key: TC_FAQ_0010_Q
  faq_code: FAQ-0010
  part: question
  category: sync_and_troubleshooting
  meaning_summary: ガイドが表示されない
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: troubleshooting

- message_key: TC_FAQ_0010_A
  faq_code: FAQ-0010
  part: answer
  category: sync_and_troubleshooting
  meaning_summary: ガイド非表示時の回答
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: retry + availability explanation

ledger_rules:
  - critical safety_level FAQ から先に翻訳確定する
  - answer は product behavior と一致させる
  - future share FAQ は v1 full ledger に含めない
