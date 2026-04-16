
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MASTER DEFINITION OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 040.master-definition
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - LifePlannerで繰り返し使うカテゴリや enum を固定する
  - UI、payload、logical schema の語彙を揃える
  - 実装前にラベル揺れと分類ぶれを防ぐ

scope:
  - plan category master
  - goal category master
  - event category master
  - shared scope category master
  - enum master
  - sensitive scope master
