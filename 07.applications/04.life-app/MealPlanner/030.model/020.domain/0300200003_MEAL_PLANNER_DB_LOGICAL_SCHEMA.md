# MealPlanner DB Logical Schema

## 1. schema_name
- life

## 2. design_principles
- 家庭固有設定、実績、private献立、課金状態は MealPlanner 側で保持する
- 食材基礎知識、基本献立知識、辞書知識、公開知識の正本は CX22073JW 側とする
- MealPlanner 側では必要に応じて reference cache / overlay を持てる
- 日 / 週 / 月の plan_horizon を正規値として扱う
- 予算は budget_tier を正とし、金額は derived 値として保持する
- user_private / user_published / cx22073jw_base を source_type で区別する

## 3. enum_logical_definitions

### plan_horizon
- daily
- weekly
- monthly

### meal_category
- breakfast
- lunch
- dinner
- snack

### budget_tier
- saving
- standard
- generous

### source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

### publication_status
- private
- draft
- review_pending
- published
- rejected

### actual_result_type
- planned
- changed
- skipped
- eating_out
- convenience_food

### purchase_status
- draft
- active
- completed
- archived

### export_status
- requested
- generated
- failed

### sync_policy
- reference_only
- cached_copy
- local_override_allowed

## 4. core_tables

### 4.1 family_profile
purpose:
- household の基本単位
columns:
- household_id: PK
- household_name: household 表示名
- owner_user_id: household 主管理者
- locale_code: 表示 locale
- currency_code: 表示通貨
- timezone: 既定 timezone
- is_active: 利用中フラグ
- created_at
- updated_at
constraints:
- PK household_id
- UNIQUE owner_user_id, household_name は必須ではない
notes:
- MealPlanner の household 単位の正本

### 4.2 family_member_preference
purpose:
- household 内メンバーの嗜好と制約
columns:
- member_id: PK
- household_id: FK -> family_profile.household_id
- nickname
- age_group
- likes_json
- dislikes_json
- allergy_tags_json
- dietary_goal
- is_active
- created_at
- updated_at
constraints:
- PK member_id
- FK household_id
notes:
- likes / dislikes / allergy_tags は初期は JSON 配列で可

### 4.3 budget_profile
purpose:
- household 単位の予算条件
columns:
- budget_profile_id: PK
- household_id: FK -> family_profile.household_id
- budget_tier
- derived_weekly_budget_amount
- derived_monthly_reference_amount
- currency_code
- calculation_basis_version
- strict_mode_flag
- created_at
- updated_at
constraints:
- PK budget_profile_id
- FK household_id
- UNIQUE household_id
notes:
- budget_tier を正本とし、derived_amount は補助値

### 4.4 goal_profile
purpose:
- household 単位の健康目標条件
columns:
- goal_profile_id: PK
- household_id: FK -> family_profile.household_id
- weight_goal_type
- salt_attention_flag
- protein_focus_flag
- energy_target_level
- activity_hint_level
- created_at
- updated_at
constraints:
- PK goal_profile_id
- FK household_id
- UNIQUE household_id

### 4.5 dietary_rule
purpose:
- household / member 単位の食事制約
columns:
- dietary_rule_id: PK
- household_id: FK -> family_profile.household_id
- target_member_id: nullable FK -> family_member_preference.member_id
- rule_type
- rule_value
- severity_level
- note
- created_at
- updated_at
constraints:
- PK dietary_rule_id
- FK household_id
- FK target_member_id nullable

### 4.6 meal_plan
purpose:
- 日 / 週 / 月の献立計画ヘッダ
columns:
- meal_plan_id: PK
- household_id: FK -> family_profile.household_id
- created_by_user_id
- plan_horizon
- parent_meal_plan_id: nullable FK -> meal_plan.meal_plan_id
- generation_mode
- target_start_date
- target_end_date
- budget_profile_id: nullable FK -> budget_profile.budget_profile_id
- goal_profile_id: nullable FK -> goal_profile.goal_profile_id
- budget_tier
- derived_budget_amount
- currency_code
- plan_status
- memo
- created_at
- updated_at
constraints:
- PK meal_plan_id
- FK household_id
- FK parent_meal_plan_id nullable
- FK budget_profile_id nullable
- FK goal_profile_id nullable
indexes_recommended:
- household_id, target_start_date
- household_id, plan_horizon, target_start_date
notes:
- monthly -> weekly -> daily の親子関係を parent_meal_plan_id で保持可能

### 4.7 meal_slot
purpose:
- 1食単位の計画明細
columns:
- meal_slot_id: PK
- meal_plan_id: FK -> meal_plan.meal_plan_id
- meal_date
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- servings
- estimated_cost
- estimated_kcal
- memo
- changed_flag
- changed_reason
- actual_status
- sort_order
- created_at
- updated_at
constraints:
- PK meal_slot_id
- FK meal_plan_id
- UNIQUE meal_plan_id, meal_date, meal_category, sort_order
notes:
- menu_reference_id は source_type に応じて user_menu / cache / catalog を参照する論理キー
- 参照元が変わっても snapshot で当時表示名を保持する

### 4.8 meal_history
purpose:
- 実績ログ
columns:
- meal_history_id: PK
- meal_slot_id: FK -> meal_slot.meal_slot_id
- actual_result_type
- actual_menu_name
- note
- recorded_by_user_id
- recorded_at
constraints:
- PK meal_history_id
- FK meal_slot_id
indexes_recommended:
- meal_slot_id
- recorded_at

### 4.9 meal_template
purpose:
- 日 / 週 / 月テンプレート
columns:
- meal_template_id: PK
- household_id: FK -> family_profile.household_id
- template_name
- plan_horizon
- pattern_type
- visibility_scope
- is_active
- created_at
- updated_at
constraints:
- PK meal_template_id
- FK household_id

### 4.10 meal_template_slot
purpose:
- テンプレートの食事枠
columns:
- meal_template_slot_id: PK
- meal_template_id: FK -> meal_template.meal_template_id
- relative_day_no
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- servings
- memo
- sort_order
constraints:
- PK meal_template_slot_id
- FK meal_template_id
- UNIQUE meal_template_id, relative_day_no, meal_category, sort_order

### 4.11 favorite_menu
purpose:
- household のお気に入り献立
columns:
- favorite_menu_id: PK
- household_id: FK -> family_profile.household_id
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- ranking
- usage_count
- created_at
- updated_at
constraints:
- PK favorite_menu_id
- FK household_id
- UNIQUE household_id, menu_source_type, menu_reference_id

### 4.12 pantry_item
purpose:
- household 在庫
columns:
- pantry_item_id: PK
- household_id: FK -> family_profile.household_id
- ingredient_reference_id
- ingredient_name_snapshot
- quantity
- unit_code
- expiry_date
- storage_type
- opened_flag
- note
- created_at
- updated_at
constraints:
- PK pantry_item_id
- FK household_id
indexes_recommended:
- household_id, expiry_date

### 4.13 shopping_list
purpose:
- 買い物リストヘッダ
columns:
- shopping_list_id: PK
- meal_plan_id: FK -> meal_plan.meal_plan_id
- household_id: FK -> family_profile.household_id
- purchase_status
- estimated_total_cost
- currency_code
- generated_at
- created_at
- updated_at
constraints:
- PK shopping_list_id
- FK meal_plan_id
- FK household_id

### 4.14 shopping_list_item
purpose:
- 買い物リスト明細
columns:
- shopping_list_item_id: PK
- shopping_list_id: FK -> shopping_list.shopping_list_id
- ingredient_reference_id
- ingredient_name_snapshot
- shopping_category
- shortage_quantity
- unit_code
- estimated_unit_price
- estimated_line_cost
- checked_flag
- checked_by_member_id: nullable FK -> family_member_preference.member_id
- checked_at
- store_memo
constraints:
- PK shopping_list_item_id
- FK shopping_list_id
- FK checked_by_member_id nullable

### 4.15 user_menu
purpose:
- ユーザー独自献立の正本
columns:
- user_menu_id: PK
- household_id: FK -> family_profile.household_id
- created_by_user_id
- menu_title
- meal_category_tags_json
- cuisine_tags_json
- season_tags_json
- dietary_tags_json
- serving_base
- prep_time_minutes
- estimated_cost
- memo
- source_type
- publication_status
- visibility_scope
- lifeos_publish_flag
- created_at
- updated_at
constraints:
- PK user_menu_id
- FK household_id
notes:
- 初期作成時は source_type=user_private, publication_status=private

### 4.16 user_menu_ingredient
purpose:
- user_menu の食材構成
columns:
- user_menu_ingredient_id: PK
- user_menu_id: FK -> user_menu.user_menu_id
- ingredient_reference_id
- ingredient_name_snapshot
- quantity
- unit_code
- optional_flag
constraints:
- PK user_menu_ingredient_id
- FK user_menu_id

### 4.17 user_menu_publish_request
purpose:
- LifeOS 公開申請状態
columns:
- submission_id: PK
- user_menu_id: FK -> user_menu.user_menu_id
- requested_visibility_scope
- submission_status
- publish_note
- review_note
- requested_at
- reviewed_at
constraints:
- PK submission_id
- FK user_menu_id
indexes_recommended:
- user_menu_id
- submission_status

### 4.18 meal_plan_export_job
purpose:
- CSV 出力管理
columns:
- export_job_id: PK
- household_id: FK -> family_profile.household_id
- requested_by_user_id
- target_scope
- target_plan_id: FK -> meal_plan.meal_plan_id
- export_format
- column_profile_json
- locale_code
- encoding
- export_status
- file_name
- generated_at
- created_at
constraints:
- PK export_job_id
- FK household_id
- FK target_plan_id

## 5. reference_cache_tables

### 5.1 catalog_source_ref
purpose:
- 参照元定義
columns:
- catalog_source_id: PK
- source_system
- source_namespace
- source_reference_id
- sync_policy
- active_flag
- created_at
- updated_at

### 5.2 ingredient_reference_cache
purpose:
- CX22073JW 由来の食材参照キャッシュ
columns:
- ingredient_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- source_type
- cx22073jw_knowledge_id
- ingredient_name
- ingredient_name_multilingual_json
- synonym_json
- category_code
- allergen_tags_json
- dietary_tags_json
- nutrition_reference_json
- storage_type_reference
- shelf_life_reference_days
- seasonality_json
- updated_at
constraints:
- PK ingredient_reference_id
- FK catalog_source_id

### 5.3 menu_reference_cache
purpose:
- CX22073JW 基本献立の参照キャッシュ
columns:
- menu_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- source_type
- cx22073jw_knowledge_id
- menu_title
- menu_category_tags_json
- cuisine_tags_json
- season_tags_json
- dietary_tags_json
- default_serving_reference
- prep_time_band
- estimated_cost_band
- nutrition_profile_json
- publication_status
- updated_at
constraints:
- PK menu_reference_id
- FK catalog_source_id

### 5.4 published_user_menu_reference_cache
purpose:
- LifeOS 公開済みユーザー献立の参照キャッシュ
columns:
- published_menu_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- origin_user_id
- origin_menu_id
- menu_title
- tags_json
- version_no
- publication_status
- quality_score
- updated_at
constraints:
- PK published_menu_reference_id
- FK catalog_source_id

## 6. logical_relationships
- family_profile 1 --- n family_member_preference
- family_profile 1 --- 1 budget_profile
- family_profile 1 --- 1 goal_profile
- family_profile 1 --- n dietary_rule
- family_profile 1 --- n meal_plan
- meal_plan 1 --- n meal_slot
- meal_slot 1 --- n meal_history
- family_profile 1 --- n meal_template
- meal_template 1 --- n meal_template_slot
- family_profile 1 --- n favorite_menu
- family_profile 1 --- n pantry_item
- meal_plan 1 --- 0..1 shopping_list
- shopping_list 1 --- n shopping_list_item
- family_profile 1 --- n user_menu
- user_menu 1 --- n user_menu_ingredient
- user_menu 1 --- n user_menu_publish_request
- meal_plan 1 --- n meal_plan_export_job

## 7. uniqueness_and_boundary_rules
- household ごとの budget_profile は 1件
- household ごとの goal_profile は 1件
- favorite_menu は household + menu_source_type + menu_reference_id で一意
- meal_slot は meal_plan + meal_date + meal_category + sort_order で一意
- template_slot は meal_template + relative_day_no + meal_category + sort_order で一意
- private user_menu は household 境界から漏らさない
- lifeos_public 化は publish_request 完了後のみ

## 8. non_primary_storage_rules
- CX22073JW 正本の食材 / 基本献立 / 辞書 / 公開知識は MealPlanner に primary 保管しない
- MealPlanner は cache / overlay / snapshot を許可する
- menu_title_snapshot / ingredient_name_snapshot により当時表示を保持する

## 9. paid_free_boundary_storage_notes
- 課金状態そのものは別の subscription 領域で保持してもよい
- MealPlanner 側では feature gate 判定結果のみ利用可
- ただし household 別 entitlement cache を置くなら以下の簡易表を追加候補とする

### optional_household_entitlement_cache
columns:
- household_id: PK
- plan_code
- is_paid
- effective_from
- effective_to
- support_mode
notes:
- support_mode は ai_chat_only を想定
