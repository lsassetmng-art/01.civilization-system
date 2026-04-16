
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-draft
phase: L9-open-points-closure

infrastructure_scope:
  - logical schema
  - pre-implementation db design
  - physical db design without sql
  - attachment / permission / active state design closure

important_boundary:
  - schema is life
  - design-only
  - executable SQL not started
  - unresolved high priority DB points are being closed
