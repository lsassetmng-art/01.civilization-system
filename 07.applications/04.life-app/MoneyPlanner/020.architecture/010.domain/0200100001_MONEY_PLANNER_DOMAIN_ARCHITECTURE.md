
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER DOMAIN ARCHITECTURE
# ============================================================

domains:
  - financial_capture
  - planning
  - projection
  - scenario_management
  - sharing
  - lifeos_linkage

core_modules:
  - income_management
  - expense_management
  - asset_management
  - liability_management
  - saving_goal_management
  - event_budget_management
  - projection_engine
  - sharing_control
