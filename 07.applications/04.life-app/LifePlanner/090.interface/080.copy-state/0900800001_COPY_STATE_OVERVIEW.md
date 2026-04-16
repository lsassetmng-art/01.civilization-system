
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# COPY STATE OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - LifePlannerの主要画面で使う状態文言を固定する
  - 空状態、エラー、成功、アップグレード導線の言い回しを揃える
  - 不安を煽らず、整理支援アプリらしいトーンを保つ

tone_policy:
  - calm
  - supportive
  - clear
  - non-judgmental
  - not overly cheerful for sensitive topics
