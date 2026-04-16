# MealPlanner Validation Copy Exact

## 1. purpose
MealPlanner の主要入力バリデーション文言を固定する。

## 2. common_rules
- 文言は短く、何を直せばよいか分かるようにする
- エラーは責めない
- 技術語を出しすぎない
- DB都合の表現をそのまま出さない

## 3. generate_plan_validation
- household_id missing:
  - 家庭情報を確認してください
- plan_horizon missing:
  - 日・週・月のどれで作るか選んでください
- target_start_date missing:
  - 開始日を入力してください
- target_end_date missing:
  - 終了日を入力してください
- invalid_date_range:
  - 日付の範囲を確認してください
- budget_tier missing:
  - 節約・普通・多めから選んでください
- household_size invalid:
  - 家族人数を正しく入力してください
- meal_categories empty:
  - 少なくとも1つの食事区分を選んでください

## 4. slot_update_validation
- meal_plan_id missing:
  - 献立情報を確認してください
- meal_slot_id missing:
  - 食事枠を選んでください
- no_mutable_field:
  - 変更内容を入力してください
- servings invalid:
  - 人数は1以上で入力してください

## 5. menu_search_validation
- page invalid:
  - ページ番号が不正です
- page_size invalid:
  - 表示件数が不正です
- meal_category invalid:
  - 食事区分を確認してください
- budget_tier invalid:
  - 予算帯を確認してください

## 6. shopping_validation
- shopping_list_id missing:
  - 買い物リストを確認してください
- shopping_list_item_id missing:
  - 対象の食材を確認してください

## 7. pantry_validation
- household_id missing:
  - 家庭情報を確認してください
- items empty:
  - 在庫を1件以上入力してください
- ingredient reference missing:
  - 食材を選んでください
- ingredient_name missing:
  - 食材名を入力してください
- quantity invalid:
  - 数量を正しく入力してください
- unit_code missing:
  - 単位を選んでください

## 8. user_menu_create_validation
- user_id missing:
  - ユーザー情報を確認してください
- household_id missing:
  - 家庭情報を確認してください
- menu_title missing:
  - 献立名を入力してください
- meal_category_tags empty:
  - 食事区分を1つ以上選んでください
- serving_base invalid:
  - 基準人数は1以上で入力してください
- ingredients empty:
  - 食材を1件以上入力してください
- ingredient row invalid:
  - 食材、数量、単位を確認してください
- invalid_visibility_scope_on_create:
  - 作成時の公開範囲を確認してください

## 9. user_menu_update_validation
- menu_master_id missing:
  - 献立情報を確認してください
- no_mutable_field:
  - 変更内容を入力してください

## 10. publish_request_validation
- menu_master_id missing:
  - 献立情報を確認してください
- requested_visibility_scope missing:
  - 公開範囲を確認してください
- invalid_requested_visibility_scope:
  - 公開範囲が不正です

## 11. export_validation
- target_scope missing:
  - 出力対象を確認してください
- target_plan_id missing:
  - 献立表を確認してください
- column_profile empty:
  - 出力列を1つ以上選んでください
- encoding invalid:
  - 文字コードを確認してください

## 12. history_validation
- meal_slot_id missing:
  - 食事枠を確認してください
- actual_result_type missing:
  - 記録種別を選んでください

## 13. budget_validation
- budget_tier missing:
  - 節約・普通・多めから選んでください
- budget_tier invalid:
  - 予算帯が不正です

## 14. family_profile_validation
- household_name missing:
  - 家庭名を入力してください
- members empty:
  - 家族情報を1件以上入力してください
- nickname missing:
  - 家族の名前を入力してください
- age_group missing:
  - 年齢区分を選んでください

## 15. free_paid_validation_copy
- pantry_on_free:
  - 在庫連携は有料で利用できます
- shared_check_on_free:
  - 家族共有チェックは有料で利用できます
- nutrition_on_free:
  - 栄養表示は有料で利用できます
- old_history_on_free:
  - 30日より前の履歴は有料で確認できます
- template_limit_on_free:
  - テンプレート保存数の上限に達しました
- favorite_limit_on_free:
  - お気に入り保存数の上限に達しました
