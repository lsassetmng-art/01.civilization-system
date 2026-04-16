# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# CHANGE REVIEW OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 100.change-review
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 変更確認や競合確認のUI方針を定義する
  - owner review queue の見せ方を整理する
  - 長期計画の変更履歴を読める形にする

ui_principles:
  - show latest truth clearly
  - make conflicting values easy to compare
  - avoid technical jargon
  - keep family collaboration understandable
