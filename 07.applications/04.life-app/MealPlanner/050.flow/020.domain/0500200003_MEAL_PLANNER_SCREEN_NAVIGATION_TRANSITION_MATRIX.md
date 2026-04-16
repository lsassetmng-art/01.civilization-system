# MealPlanner Screen Navigation Transition Matrix

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
MealPlanner の主要画面遷移を固定する。

## 2. navigation_principles
- 週次画面を主導線にする
- 日次は即時調整導線
- 月次は先回り計画導線
- pantry / family / integration は paid 文脈で広げる
- 公開申請は user_menu 導線からのみ行う
- upgrade 導線は割り込みすぎない

## 3. root_tabs
- ホーム
- 献立
- 買い物
- 履歴
- 設定

## 4. primary_transitions

### dashboard_home
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- monthly_meal_planner
- shopping_list
- meal_history_log
- goal_and_budget_settings
- pantry_inventory
- family_settings
- notification_settings

notes:
- pantry_inventory on free:
  - teaser or upgrade modal
- family_settings advanced on free:
  - teaser or limited mode

### weekly_meal_planner
can_navigate_to:
- daily_meal_detail
- menu_search_and_suggestion
- template_library
- favorite_menu_list
- shopping_list
- goal_and_budget_settings
- user_menu_editor

notes:
- slot tap -> daily_meal_detail
- replace action -> menu_search_and_suggestion
- csv export stays in place
- template save limit on free -> upgrade modal

### daily_meal_detail
can_navigate_to:
- menu_search_and_suggestion
- weekly_meal_planner
- shopping_list
- meal_history_log

notes:
- actual result record stays in place
- nutrition panel on free -> upgrade modal

### monthly_meal_planner
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- goal_and_budget_settings

notes:
- derive week -> weekly_meal_planner
- csv export stays in place

### menu_search_and_suggestion
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- user_menu_editor

notes:
- select result -> return with chosen menu context
- add own menu -> user_menu_editor

### pantry_inventory
can_navigate_to:
- weekly_meal_planner
- shopping_list

notes:
- paid full access
- free teaser only or blocked entry

### shopping_list
can_navigate_to:
- weekly_meal_planner
- pantry_inventory
- family_settings

notes:
- shared check full is paid
- single use path remains for free

### goal_and_budget_settings
can_navigate_to:
- weekly_meal_planner
- monthly_meal_planner
- family_settings

notes:
- LifeOS integration toggle on free -> upgrade modal

### family_settings
can_navigate_to:
- goal_and_budget_settings
- weekly_meal_planner
- shopping_list

notes:
- household edit is planner-focused

### template_library
can_navigate_to:
- weekly_meal_planner
- monthly_meal_planner

### favorite_menu_list
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- menu_search_and_suggestion

### meal_history_log
can_navigate_to:
- daily_meal_detail
- weekly_meal_planner

notes:
- older-than-free-window -> upgrade modal

### user_menu_editor
can_navigate_to:
- user_menu_publish_status
- weekly_meal_planner
- menu_search_and_suggestion

notes:
- save private -> remain or return
- submit publish -> user_menu_publish_status optional redirect

### user_menu_publish_status
can_navigate_to:
- user_menu_editor
- weekly_meal_planner

### notification_settings
can_navigate_to:
- dashboard_home
- family_settings
- goal_and_budget_settings

## 5. modal_transitions
- free pantry access -> upgrade_modal
- free nutrition panel -> upgrade_modal
- free shared check -> upgrade_modal
- free integration toggle -> upgrade_modal
- free template limit reached -> upgrade_modal
- free favorite limit reached -> upgrade_modal
- free history old range -> upgrade_modal

## 6. destructive_or_sensitive_transition_rules
- unsaved user_menu edit:
  - confirm before leave
- unsaved family settings:
  - confirm before leave
- replacing slot:
  - no full-screen confirm required
  - but changed flag must be set on save
- publish request:
  - confirm before submit

## 7. non_goals
- framework routing details
- deep link implementation
- animation specification
