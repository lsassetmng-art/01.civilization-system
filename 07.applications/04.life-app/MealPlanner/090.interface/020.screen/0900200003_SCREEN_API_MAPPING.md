# Screen API Mapping

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## dashboard_home
- GET /api/mealplanner/dashboard

## weekly_meal_planner
- POST /api/mealplanner/plan/generate
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update

## daily_meal_detail
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update
- POST /api/mealplanner/history/record

## monthly_meal_planner
- POST /api/mealplanner/plan/generate
- POST /api/mealplanner/plan/derive-week

## menu_search_and_suggestion
- POST /api/mealplanner/menu/search
- POST /api/mealplanner/menu/suggest

## pantry_inventory
- GET /api/mealplanner/pantry/list
- POST /api/mealplanner/pantry/upsert

## shopping_list
- POST /api/mealplanner/shopping/generate
- POST /api/mealplanner/shopping/item/check

## user_menu_editor
- POST /api/mealplanner/user-menu/create
- POST /api/mealplanner/user-menu/update

## user_menu_publish_status
- POST /api/mealplanner/user-menu/publish-request
- GET /api/mealplanner/user-menu/publish-status

## settings
- POST /api/mealplanner/settings/budget-tier
- POST /api/mealplanner/settings/family-profile
