# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# READINESS GATE OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 030.readiness-gate
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 実装前に設計が十分固まっているかを確認する
  - まだ設計段階であることを前提に、実装着手条件を先に明文化する
  - スコープ膨張や設計矛盾のまま実装に入ることを防ぐ

principles:
  - 実装開始前に category / enum / role / payload / screen item の矛盾を解消する
  - life スキーマ前提を崩さない
  - Free / Family の差分を曖昧にしない
