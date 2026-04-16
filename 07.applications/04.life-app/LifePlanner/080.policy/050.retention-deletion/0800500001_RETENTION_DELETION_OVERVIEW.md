
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# RETENTION DELETION OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 050.retention-deletion
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 何をどの考え方で残すかを定義する
  - archive / restore / delete の判断基準をそろえる
  - family共有や長期運用と整合する retention 方針を置く

principles:
  - meaningful history should usually be retained
  - review logs are high-value context
  - deletion should be intentional and explicit
  - sensitive shared content should stop being visible when scope is removed, regardless of retention
