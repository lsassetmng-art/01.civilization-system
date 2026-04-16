
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER API OVERVIEW
# ============================================================

major_endpoints:
  - GET /v1/money-planner/dashboard
  - GET /v1/money-planner/incomes
  - POST /v1/money-planner/incomes
  - GET /v1/money-planner/expenses
  - POST /v1/money-planner/expenses
  - GET /v1/money-planner/assets
  - POST /v1/money-planner/assets
  - GET /v1/money-planner/liabilities
  - POST /v1/money-planner/liabilities
  - GET /v1/money-planner/saving-goals
  - POST /v1/money-planner/saving-goals
  - GET /v1/money-planner/event-budgets
  - POST /v1/money-planner/event-budgets
  - GET /v1/money-planner/projections/monthly
  - GET /v1/money-planner/projections/yearly
  - GET /v1/money-planner/scenarios
  - POST /v1/money-planner/scenarios/compare
