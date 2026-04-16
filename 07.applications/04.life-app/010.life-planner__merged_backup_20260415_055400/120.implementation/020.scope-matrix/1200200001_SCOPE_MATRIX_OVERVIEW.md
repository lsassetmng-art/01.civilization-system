# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# SCOPE MATRIX OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 020.scope-matrix
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - フェーズ別とプラン別の機能範囲を固定する
  - 画面と機能の関係を明確にする
  - 実装前にスコープ膨張を防ぐ

matrix_axes:
  - phase
  - free / family
  - screen
  - feature
