# ============================================================
# TRAINING COACH SHARE VIEWER LOCALIZED COPY LEDGER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - future share viewer UI 用の文言キー台帳を作る
  - summary-only share の前提を文言面でも維持する
  - raw health exposure を避ける表現を固定しやすくする

ledger_columns:
  - message_key
  - screen_code
  - part
  - meaning_summary
  - priority
  - ja_jp_status
  - en_status
  - safety_level
  - note

starter_rows:

- message_key: TC_SHARE_owner_settings_title
  screen_code: share_settings_owner
  part: title
  meaning_summary: 共有設定画面タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_invitation_review_title
  screen_code: share_invitation_review_viewer
  part: title
  meaning_summary: 招待確認画面タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_invitation_scope_notice
  screen_code: share_invitation_review_viewer
  part: body
  meaning_summary: 共有範囲の要約説明
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: must emphasize summary-only scope

- message_key: TC_SHARE_summary_only_notice
  screen_code: shared_progress_summary_viewer
  part: note
  meaning_summary: 要約のみ共有されている旨
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: privacy-forward wording

- message_key: TC_SHARE_shared_progress_title
  screen_code: shared_progress_summary_viewer
  part: title
  meaning_summary: 共有進捗画面タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_scope_basic_label
  screen_code: shared_progress_summary_viewer
  part: label
  meaning_summary: 基本共有範囲ラベル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_scope_extended_label
  screen_code: shared_progress_summary_viewer
  part: label
  meaning_summary: 拡張共有範囲ラベル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_access_revoked_title
  screen_code: share_revocation_notice
  part: title
  meaning_summary: 共有解除後タイトル
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: future feature

- message_key: TC_SHARE_access_revoked_body
  screen_code: share_revocation_notice
  part: body
  meaning_summary: 共有解除後の説明
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: calm and clear

- message_key: TC_SHARE_owner_controls_scope_notice
  screen_code: common
  part: note
  meaning_summary: owner が共有範囲を管理する説明
  priority: low
  ja_jp_status: draft
  en_status: pending
  safety_level: normal
  note: privacy control emphasis

ledger_rules:
  - share 文言は future feature でも privacy-first を守る
  - raw health に見える表現を避ける
  - ranking / comparison を連想させる語を避ける
