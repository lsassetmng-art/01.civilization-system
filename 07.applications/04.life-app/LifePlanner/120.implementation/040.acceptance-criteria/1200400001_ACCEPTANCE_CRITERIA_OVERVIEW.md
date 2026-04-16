
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# ACCEPTANCE CRITERIA OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 040.acceptance-criteria
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 設計が満たすべき完成条件を文章で固定する
  - 実装前の期待値を明文化する
  - 画面、権限、連携、非機能の受け入れ条件を揃える

principles:
  - acceptance は画面仕様より上位の確認観点とする
  - 実装方式ではなくユーザー結果で判定する
  - life スキーマ前提を崩さない
