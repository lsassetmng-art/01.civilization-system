# MealPlanner UI Component Decomposition

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
MealPlanner の UI を画面単位から component 単位へ分解し、
設計として再利用可能な粒度に整理する。

## 2. decomposition_principles
- 画面責務と部品責務を分ける
- 日 / 週 / 月の共通部を先に切り出す
- 共通部品の正式設計は別チャット扱い
- ここでは MealPlanner が必要とする UI 分解だけ記述する

## 3. screen_to_component_map

### dashboard_home
components:
- dashboard_header_card
- plan_horizon_quick_actions
- today_slots_summary_card
- current_week_summary_card
- shopping_summary_card
- recent_history_card
- pantry_teaser_or_summary_card
- nutrition_teaser_or_summary_card
- family_share_teaser_or_summary_card
- lifeos_integration_teaser_or_summary_card

### weekly_meal_planner
components:
- weekly_header_bar
- budget_tier_badge
- weekly_grid
- weekly_grid_cell
- meal_slot_card
- slot_action_sheet
- generation_summary_card
- template_action_bar
- favorite_action_button
- csv_export_button
- free_limit_notice_banner
- upgrade_teaser_card

### daily_meal_detail
components:
- daily_header_bar
- day_slot_list
- day_slot_detail_card
- actual_result_action_sheet
- history_preview_card
- nutrition_summary_card_paid
- pantry_hint_card_paid
- csv_export_button

### monthly_meal_planner
components:
- monthly_header_bar
- month_budget_summary_card
- monthly_week_block_list
- monthly_week_block_card
- derive_week_button
- event_hint_summary_card
- csv_export_button

### menu_search_and_suggestion
components:
- search_filter_bar
- source_filter_chip_group
- dietary_rule_chip_group
- search_result_list
- search_result_card
- suggestion_result_list
- suggestion_result_card
- score_summary_badge_group

### pantry_inventory
components:
- pantry_header_bar
- pantry_item_list
- pantry_item_row
- pantry_editor_sheet
- expiry_alert_banner
- pantry_teaser_card_free

### shopping_list
components:
- shopping_header_card
- shopping_progress_card
- shopping_group_section
- shopping_item_row
- shopping_check_button
- store_memo_input
- shared_check_teaser_free

### goal_and_budget_settings
components:
- budget_tier_selector
- derived_budget_preview_card
- goal_toggle_group
- lifeos_integration_teaser_or_toggle_group
- save_settings_button

### family_settings
components:
- household_header_form
- family_member_list
- family_member_card
- family_member_editor_sheet
- shared_control_teaser_or_panel

### template_library
components:
- template_list
- template_card
- template_limit_banner
- template_apply_button

### favorite_menu_list
components:
- favorite_list
- favorite_card
- favorite_limit_banner

### meal_history_log
components:
- history_filter_bar
- history_list
- history_row
- retention_limit_banner
- statistics_summary_card_paid

### user_menu_editor
components:
- user_menu_header_form
- tag_selector_group
- serving_and_time_form
- ingredient_editor_list
- ingredient_editor_row
- memo_input_card
- visibility_scope_selector
- publish_request_button
- publication_status_badge

### user_menu_publish_status
components:
- publish_status_card
- requested_scope_badge
- review_note_card
- refresh_button

### notification_settings
components:
- notification_toggle_group
- shared_notification_teaser_free
- save_notification_button

## 4. shared_component_candidates_inside_app
- plan_horizon_selector
- budget_tier_selector
- meal_category_chip_group
- source_type_badge
- publication_status_badge
- csv_export_button
- free_limit_banner
- upgrade_teaser_card
- empty_state_card
- error_state_card
- loading_state_card

## 5. stateful_vs_stateless_split

### stateful_preferred
- weekly_grid
- day_slot_list
- pantry_item_list
- shopping_group_section
- ingredient_editor_list

### stateless_preferred
- source_type_badge
- publication_status_badge
- budget_tier_badge
- csv_export_button
- empty_state_card
- free_limit_banner

## 6. gating_sensitive_components
- pantry_teaser_card_free
- nutrition_summary_card_paid
- family_share_teaser_or_summary_card
- lifeos_integration_teaser_or_toggle_group
- shared_check_teaser_free
- template_limit_banner
- favorite_limit_banner
- retention_limit_banner
- shared_notification_teaser_free

## 7. non_goals
- 実装技術の決定
- Flutter/React/Native どれで組むかの決定
- 共通部品台帳への正式採用判断
