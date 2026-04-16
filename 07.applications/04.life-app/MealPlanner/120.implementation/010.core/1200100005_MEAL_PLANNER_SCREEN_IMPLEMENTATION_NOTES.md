# MealPlanner Screen Implementation Notes

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. implementation_order
優先画面:
- dashboard_home
- weekly_meal_planner
- daily_meal_detail
- menu_search_and_suggestion
- shopping_list
- goal_and_budget_settings
- family_settings
- user_menu_editor

第2段階:
- monthly_meal_planner
- pantry_inventory
- user_menu_publish_status
- meal_history_log
- template_library
- favorite_menu_list
- notification_settings

## 2. implementation_rules
- 画面 state 名は API payload の語彙と合わせる
- enum は UI独自名に変換しない
- source_type と publication_status を画面でも保持する
- CSV export action は daily / weekly / monthly の3画面に置く
- user_menu は create と update を分ける
- publish request は editor から呼び出せるようにする

## 3. warning_points
- meal_slot の snapshot 表示と参照元表示を混同しない
- free / paid の gating は UI文言と entitlement 判定を分離する
- CX22073JW 正本データを編集させない
- public menu と private menu を同じ編集導線に流し込まない
- family 設定と household 共有設定を曖昧にしない

## 4. next_fix_items
- screen ごとの request/response field required/optional 固定
- screen event 名固定
- validation message 文言固定
- UI component 単位への分解
