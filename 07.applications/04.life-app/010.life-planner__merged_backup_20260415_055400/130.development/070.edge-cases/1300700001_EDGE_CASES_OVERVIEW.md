# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# EDGE CASES OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 070.edge-cases
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 例外ケースを先に洗って設計抜けを防ぐ
  - 実装前の危険箇所を可視化する
  - 特に権限、日付、通貨、状態遷移、外部連携の境界を確認する
