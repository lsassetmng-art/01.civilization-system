# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# SCREEN ITEM OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 020.screen-item
owner: Boss
prepared_by: Zero
persistence_schema: life

purpose:
  - 画面ごとの表示項目、入力項目、編集可否を exact に固定する
  - 実装前に項目揺れ、責務漏れ、表示順ブレを防ぐ
  - UI項目と保存先の結び付きを明確化する

scope:
  - home
  - life_plan_detail
  - plan create / edit
  - family share
  - scenario compare
  - reflection candidate

binding_policy:
  - 保存スキーマは life を前提とする
  - 表示専用派生値と保存値を分離する
  - 画面項目は life スキーマ上の論理エンティティに紐づける
