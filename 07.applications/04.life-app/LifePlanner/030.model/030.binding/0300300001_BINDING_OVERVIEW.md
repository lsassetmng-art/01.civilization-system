
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# BINDING OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 030.binding
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 画面項目と論理テーブルの対応を固定する
  - derived項目と保存項目を分離する
  - 画面責務と entity 責務のズレを防ぐ

scope:
  - home
  - life_plan_detail
  - plan create / edit
  - family share
  - scenario compare
  - reflection candidate
