# MealPlanner Design Consistency Matrix

## 1. purpose
主要設計論点が、各文書で矛盾なく扱われているかを点検するためのマトリクス。

## 2. matrix

### schema_is_life
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md
- status:
  - fixed
- check_point:
  - app_meal_planner 前提が残っていないか確認する

### pricing_free_paid_500
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100002_MEAL_PLANNER_POLICY.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- status:
  - fixed
- check_point:
  - plus / family 分離案が残っていないか確認する

### support_ai_chat_only
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
  - 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md
- status:
  - fixed
- check_point:
  - 有人サポート前提の文言が残っていないか確認する

### plan_horizon_daily_weekly_monthly
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- status:
  - fixed
- check_point:
  - 週のみ前提になっている箇所がないか確認する

### budget_tier_saving_standard_generous
- source_of_truth:
  - 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- status:
  - fixed
- check_point:
  - 金額直入力主方式の記述が残っていないか確認する

### csv_available_both_free_paid
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
- status:
  - fixed
- check_point:
  - free で CSV 不可の記述が残っていないか確認する

### csv_optional_columns_paid_only
- source_of_truth:
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
- status:
  - fixed
- check_point:
  - optional columns の無料公開が混ざっていないか確認する

### user_menu_private_first_publish_later
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
  - 0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md
- status:
  - fixed
- check_point:
  - private -> published 直接確定の記述がないか確認する

### cx22073jw_primary_knowledge_boundary
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600200002_CX22073JW_INTEGRATION.md
  - 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- status:
  - fixed
- check_point:
  - MealPlanner 側が基礎知識正本になっていないか確認する

### favorite_template_snapshot_first
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
- status:
  - fixed
- check_point:
  - 自動最新版追従が既定になっていないか確認する

### history_retention_ui_control_not_delete
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
  - 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md
- status:
  - fixed
- check_point:
  - free 向け短期物理削除の記述がないか確認する

### quality_score_ranking_helper_only
- source_of_truth:
  - 0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
  - 0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md
- status:
  - fixed
- check_point:
  - quality score が公開可否決定権になっていないか確認する

### notification_user_scope_primary
- source_of_truth:
  - 0600100003_NOTIFICATION_SETTINGS_API_EXACT.md
  - 0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md
- status:
  - fixed
- check_point:
  - household 正本と書いていないか確認する

## 3. review_outcome_target
- fixed 項目に明確な矛盾がないこと
- open 項目は将来候補に留まり、現時点の設計を壊していないこと
