
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# ACCESS CONTROL OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 030.access-control
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - owner / family_editor / family_viewer の表示可否と編集可否を固定する
  - 共有範囲とセンシティブカテゴリの扱いを画面単位で整理する
  - 実装前に権限ブレを防ぐ

role_summary:
  owner:
    - full access
    - final decision
    - share control

  family_editor:
    - edit within shared scope
    - review proposal
    - no final share control

  family_viewer:
    - read within shared scope only
    - no edit
