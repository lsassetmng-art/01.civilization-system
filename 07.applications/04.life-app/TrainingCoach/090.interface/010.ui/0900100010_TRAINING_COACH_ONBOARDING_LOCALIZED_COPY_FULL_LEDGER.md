# ============================================================
# TRAINING COACH ONBOARDING LOCALIZED COPY FULL LEDGER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - onboarding で使う文言キーを一括管理する
  - 画面見出し、説明、ボタン、補助文、注意文を整理する
  - locale 展開前の正本台帳にする

ledger_columns:
  - message_key
  - step_code
  - part
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - note

starter_rows:

- message_key: TC_UI_onboarding_welcome_title
  step_code: step_1_welcome
  part: title
  meaning_summary: ようこそタイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: onboarding core

- message_key: TC_UI_onboarding_welcome_body
  step_code: step_1_welcome
  part: body
  meaning_summary: アプリの役割説明
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: medical-not-app disclaimer aligned

- message_key: TC_UI_onboarding_welcome_note_non_medical
  step_code: step_1_welcome
  part: note
  meaning_summary: 医療アプリではない旨の補足
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: policy alignment required

- message_key: TC_UI_onboarding_goal_step_title
  step_code: step_2_goal_selection
  part: title
  meaning_summary: 目標選択タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: core step

- message_key: TC_UI_onboarding_goal_step_body
  step_code: step_2_goal_selection
  part: body
  meaning_summary: 目標選択の説明
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: supportive tone

- message_key: TC_UI_onboarding_goal_custom_placeholder
  step_code: step_2_goal_selection
  part: placeholder
  meaning_summary: カスタム目標入力欄
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: custom mode only

- message_key: TC_UI_onboarding_level_step_title
  step_code: step_3_level_and_time
  part: title
  meaning_summary: 難易度と時間設定タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: core step

- message_key: TC_UI_onboarding_level_step_body
  step_code: step_3_level_and_time
  part: body
  meaning_summary: 難易度と時間設定の説明
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: avoid pressure

- message_key: TC_UI_onboarding_schedule_step_title
  step_code: step_4_schedule_preferences
  part: title
  meaning_summary: 曜日と休息日設定タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: core step

- message_key: TC_UI_onboarding_schedule_step_body
  step_code: step_4_schedule_preferences
  part: body
  meaning_summary: 続けやすい曜日を選ぶ説明
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: continuity oriented

- message_key: TC_UI_onboarding_condition_step_title
  step_code: step_5_condition_baseline
  part: title
  meaning_summary: 今日の調子入力タイトル
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: sensitive wording

- message_key: TC_UI_onboarding_condition_step_body
  step_code: step_5_condition_baseline
  part: body
  meaning_summary: 体調自己申告の説明
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: elevated
  note: non-medical framing

- message_key: TC_UI_onboarding_notification_step_title
  step_code: step_6_notification_choice
  part: title
  meaning_summary: 通知設定タイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: skippable in v1

- message_key: TC_UI_onboarding_notification_step_body
  step_code: step_6_notification_choice
  part: body
  meaning_summary: 通知設定の説明
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: skippable in v1

- message_key: TC_UI_onboarding_premium_step_title
  step_code: step_7_premium_education
  part: title
  meaning_summary: Premium 紹介タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: non-pushy

- message_key: TC_UI_onboarding_premium_step_body
  step_code: step_7_premium_education
  part: body
  meaning_summary: Premium 紹介本文
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: truthful only

- message_key: TC_UI_onboarding_first_plan_title
  step_code: step_8_first_plan_proposal
  part: title
  meaning_summary: 初期プラン提案タイトル
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: supportive suggestion

- message_key: TC_UI_onboarding_first_plan_body
  step_code: step_8_first_plan_proposal
  part: body
  meaning_summary: 初期プラン提案本文
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: avoid overcommitment

- message_key: TC_UI_onboarding_button_next
  step_code: common
  part: button
  meaning_summary: 次へボタン
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: common onboarding action

- message_key: TC_UI_onboarding_button_skip
  step_code: common
  part: button
  meaning_summary: スキップボタン
  priority: medium
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: only skippable steps

- message_key: TC_UI_onboarding_button_finish
  step_code: common
  part: button
  meaning_summary: 開始ボタン
  priority: high
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: final CTA

ledger_rules:
  - elevated safety_level 文言は先に確定する
  - onboarding は短く、責めない、医療断定しない
  - premium 文言は truthfulness review 後に確定する
