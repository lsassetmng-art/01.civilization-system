# MealPlanner Pre Implementation Bridge Note

## 1. purpose
今は実装しない前提のまま、
将来実装へ橋渡しする時に何を入口にするかを整理する。

## 2. bridge_principle
- いまは設計確定を優先する
- 実装へ移る時は detail docs を入口にする
- integrated doc だけで実装へ進まない

## 3. future_implementation_entry_points

### api_start_point
- 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md

### model_start_point
- 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md
- 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md

### ui_start_point
- 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md
- 0900200009_MEAL_PLANNER_COMPONENT_PROPS_DESIGN.md
- 0900200010_MEAL_PLANNER_COMPONENT_EVENT_PAYLOAD_DETAIL.md

### policy_start_point
- 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
- 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md

## 4. not_to_do_now
- DDL 化
- migration 化
- endpoint 実装
- UI 実装
- integration wiring

## 5. move_condition
- Boss が実装フェーズ移行を判断した時
- freeze candidate として大きな矛盾がない時
