
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# RECOMMENDATION RULES OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 050.recommendation-rules
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - ホームやサマリーで何を上に出すかをルール化する
  - review needed や recommendation の優先順位を固定する
  - AI assist とは別に、アプリ本体の整理支援ロジックを定義する

principles:
  - recommendation is guidance, not command
  - high-sensitivity items should be careful in wording and visibility
  - owner final judgment remains explicit
