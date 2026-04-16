# MealPlanner Required / Optional / Nullable Matrix

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
MealPlanner の API / DB / Screen I/O について、
required / optional / nullable を exact に固定する。

## 2. rule_definitions
- required:
  - request または保存時に必須
  - 未指定なら validation error
- optional:
  - 指定しなくても受理可能
  - 未指定時は server default / no_change / empty behavior のいずれか
- nullable:
  - key 自体は存在してもよく、値として null を許容
  - optional と nullable は別概念
- forbidden_on_create:
  - create request では送ってはいけない
- server_managed:
  - server 側で決定、client 指定禁止または無視

## 3. api_request_matrix

### 3.1 POST /api/mealplanner/plan/generate
- user_id: required, non_null
- household_id: required, non_null
- plan_horizon: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_tier: required, non_null
- household_size: required, non_null
- meal_categories: required, non_null
- dietary_rules: optional, non_null_if_present
- disliked_ingredients: optional, non_null_if_present
- preferred_cuisine_tags: optional, non_null_if_present
- pantry_mode: optional, non_null_if_present
- include_user_private_menu: optional, non_null_if_present
- include_user_published_menu: optional, non_null_if_present
- include_cx22073jw_base_menu: optional, non_null_if_present
- activity_hint: optional, nullable
- goal_hint: optional, nullable

#### activity_hint child fields
- training_day_flag: optional, nullable
- activity_level: optional, nullable

#### goal_hint child fields
- weight_goal_type: optional, nullable
- salt_attention_flag: optional, nullable
- protein_focus_flag: optional, nullable

### 3.2 POST /api/mealplanner/plan/slot/update
- meal_plan_id: required, non_null
- meal_slot_id: required, non_null
- menu_master_id: optional, nullable
- menu_title_override: optional, nullable
- servings: optional, nullable
- memo: optional, nullable
- changed_reason: optional, nullable
- changed_flag: optional, nullable

rules:
- meal_plan_id and meal_slot_id are always required
- at least one mutable field must be present:
  - menu_master_id
  - menu_title_override
  - servings
  - memo
  - changed_reason
  - changed_flag

### 3.3 POST /api/mealplanner/plan/derive-week
- monthly_meal_plan_id: required, non_null
- target_week_start_date: required, non_null

### 3.4 POST /api/mealplanner/menu/search
- query: optional, nullable
- meal_category: optional, nullable
- budget_tier: optional, nullable
- source_filters: optional, non_null_if_present
- dietary_rules: optional, non_null_if_present
- exclude_ingredients: optional, non_null_if_present
- page: required, non_null
- page_size: required, non_null

rules:
- query can be null or omitted when filter-only search is intended
- page and page_size are required

### 3.5 POST /api/mealplanner/menu/suggest
- meal_date: required, non_null
- meal_category: required, non_null
- budget_tier: required, non_null
- household_size: required, non_null
- pantry_items: optional, non_null_if_present
- dietary_rules: optional, non_null_if_present
- preferred_cuisine_tags: optional, non_null_if_present
- include_user_private_menu: optional, non_null_if_present

### 3.6 POST /api/mealplanner/shopping/generate
- meal_plan_id: required, non_null
- include_pantry_diff: optional, non_null_if_present
- group_by: optional, nullable
- currency_code: optional, nullable

### 3.7 POST /api/mealplanner/shopping/item/check
- shopping_list_id: required, non_null
- shopping_list_item_id: required, non_null
- checked_flag: required, non_null
- checked_by_member_id: optional, nullable

rules:
- free plan では checked_by_member_id omitted 可
- paid / household 共同チェックでは checked_by_member_id 推奨

### 3.8 POST /api/mealplanner/pantry/upsert
- household_id: required, non_null
- items: required, non_null

#### pantry items child fields
- pantry_item_id: optional, nullable
- ingredient_id: optional, nullable
- ingredient_reference_id: optional, nullable
- ingredient_name: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- expiry_date: optional, nullable
- storage_type: optional, nullable
- opened_flag: optional, nullable
- note: optional, nullable

rules:
- ingredient_id or ingredient_reference_id の少なくとも一方が必要
- ingredient_name は snapshot / fallback 表示のため required

### 3.9 POST /api/mealplanner/user-menu/create
- user_id: required, non_null
- household_id: required, non_null
- menu_title: required, non_null
- meal_category_tags: required, non_null
- cuisine_tags: optional, non_null_if_present
- season_tags: optional, non_null_if_present
- dietary_tags: optional, non_null_if_present
- serving_base: required, non_null
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- ingredients: required, non_null
- memo: optional, nullable
- visibility_scope: required, non_null

#### ingredients child fields
- ingredient_id: optional, nullable
- ingredient_reference_id: optional, nullable
- ingredient_name: required, non_null
- quantity: required, non_null
- unit_code: required, non_null

rules:
- ingredients must contain at least 1 row
- ingredient_id or ingredient_reference_id の少なくとも一方が必要
- visibility_scope on create is restricted:
  - private
  - household
- lifeos_public is forbidden_on_create

### 3.10 POST /api/mealplanner/user-menu/update
- menu_master_id: required, non_null
- menu_title: optional, nullable
- meal_category_tags: optional, nullable
- cuisine_tags: optional, nullable
- season_tags: optional, nullable
- dietary_tags: optional, nullable
- serving_base: optional, nullable
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- ingredients: optional, nullable
- memo: optional, nullable
- visibility_scope: optional, nullable

rules:
- at least one mutable field required
- source_type / publication_status are server_managed

### 3.11 POST /api/mealplanner/user-menu/publish-request
- menu_master_id: required, non_null
- requested_visibility_scope: required, non_null
- publish_note: optional, nullable

rules:
- requested_visibility_scope currently allowed:
  - lifeos_public

### 3.12 POST /api/mealplanner/export/csv
- user_id: required, non_null
- household_id: required, non_null
- target_scope: required, non_null
- target_plan_id: required, non_null
- column_profile: required, non_null
- locale_code: optional, nullable
- encoding: optional, nullable

rules:
- encoding default:
  - utf-8
- column_profile must contain at least 1 column

### 3.13 POST /api/mealplanner/history/record
- meal_slot_id: required, non_null
- actual_result_type: required, non_null
- actual_menu_name: optional, nullable
- note: optional, nullable

rules:
- actual_menu_name recommended for:
  - changed
  - eating_out
  - convenience_food
- actual_menu_name may be null for:
  - skipped

### 3.14 POST /api/mealplanner/settings/budget-tier
- household_id: required, non_null
- budget_tier: required, non_null

### 3.15 POST /api/mealplanner/settings/family-profile
- household_id: required, non_null
- household_name: required, non_null
- members: required, non_null

#### member child fields
- member_id: optional, nullable
- nickname: required, non_null
- age_group: required, non_null
- likes: optional, non_null_if_present
- dislikes: optional, non_null_if_present
- allergy_tags: optional, non_null_if_present

## 4. api_response_matrix

### common_response
- success: required, non_null
- data: required when success=true, non_null
- error: required when success=false, non_null

### plan_detail_response.data
- meal_plan_id: required, non_null
- household_id: required, non_null
- plan_horizon: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_tier: required, non_null
- derived_budget_amount: required, non_null
- currency_code: required, non_null
- slots: required, non_null

#### slot child fields
- meal_slot_id: required, non_null
- meal_date: required, non_null
- meal_category: required, non_null
- menu_master_id: optional, nullable
- menu_reference_id: optional, nullable
- menu_title: required, non_null
- source_type: required, non_null
- publication_status: optional, nullable
- servings: required, non_null
- estimated_cost: optional, nullable
- estimated_kcal: optional, nullable
- memo: optional, nullable
- actual_status: required, non_null
- changed_flag: required, non_null
- changed_reason: optional, nullable

rules:
- menu_master_id and menu_reference_id are mutually contextual
- at least one menu identifier should be present in returned slots

## 5. db_column_matrix

### 5.1 family_profile
- household_id: required, non_null, PK
- household_name: required, non_null
- owner_user_id: required, non_null
- locale_code: required, non_null
- currency_code: required, non_null
- timezone: required, non_null
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.2 family_member_preference
- member_id: required, non_null, PK
- household_id: required, non_null, FK
- nickname: required, non_null
- age_group: required, non_null
- likes_json: optional, nullable
- dislikes_json: optional, nullable
- allergy_tags_json: optional, nullable
- dietary_goal: optional, nullable
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.3 budget_profile
- budget_profile_id: required, non_null, PK
- household_id: required, non_null, FK, UNIQUE
- budget_tier: required, non_null
- derived_weekly_budget_amount: required, non_null
- derived_monthly_reference_amount: required, non_null
- currency_code: required, non_null
- calculation_basis_version: required, non_null
- strict_mode_flag: required, non_null, server_default=false
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.4 goal_profile
- goal_profile_id: required, non_null, PK
- household_id: required, non_null, FK, UNIQUE
- weight_goal_type: optional, nullable
- salt_attention_flag: required, non_null, server_default=false
- protein_focus_flag: required, non_null, server_default=false
- energy_target_level: optional, nullable
- activity_hint_level: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.5 dietary_rule
- dietary_rule_id: required, non_null, PK
- household_id: required, non_null, FK
- target_member_id: optional, nullable, FK
- rule_type: required, non_null
- rule_value: required, non_null
- severity_level: optional, nullable
- note: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.6 meal_plan
- meal_plan_id: required, non_null, PK
- household_id: required, non_null, FK
- created_by_user_id: required, non_null
- plan_horizon: required, non_null
- parent_meal_plan_id: optional, nullable, FK self
- generation_mode: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_profile_id: optional, nullable, FK
- goal_profile_id: optional, nullable, FK
- budget_tier: required, non_null
- derived_budget_amount: required, non_null
- currency_code: required, non_null
- plan_status: required, non_null
- memo: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.7 meal_slot
- meal_slot_id: required, non_null, PK
- meal_plan_id: required, non_null, FK
- meal_date: required, non_null
- meal_category: required, non_null
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- servings: required, non_null
- estimated_cost: optional, nullable
- estimated_kcal: optional, nullable
- memo: optional, nullable
- changed_flag: required, non_null, server_default=false
- changed_reason: optional, nullable
- actual_status: required, non_null, server_default=planned
- sort_order: required, non_null
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.8 meal_history
- meal_history_id: required, non_null, PK
- meal_slot_id: required, non_null, FK
- actual_result_type: required, non_null
- actual_menu_name: optional, nullable
- note: optional, nullable
- recorded_by_user_id: required, non_null
- recorded_at: server_managed_or_required_by_server, non_null

### 5.9 meal_template
- meal_template_id: required, non_null, PK
- household_id: required, non_null, FK
- template_name: required, non_null
- plan_horizon: required, non_null
- pattern_type: required, non_null
- visibility_scope: required, non_null
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.10 meal_template_slot
- meal_template_slot_id: required, non_null, PK
- meal_template_id: required, non_null, FK
- relative_day_no: required, non_null
- meal_category: required, non_null
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- servings: required, non_null
- memo: optional, nullable
- sort_order: required, non_null

### 5.11 favorite_menu
- favorite_menu_id: required, non_null, PK
- household_id: required, non_null, FK
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- ranking: optional, nullable
- usage_count: required, non_null, server_default=0
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.12 pantry_item
- pantry_item_id: required, non_null, PK
- household_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- expiry_date: optional, nullable
- storage_type: optional, nullable
- opened_flag: required, non_null, server_default=false
- note: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.13 shopping_list
- shopping_list_id: required, non_null, PK
- meal_plan_id: required, non_null, FK
- household_id: required, non_null, FK
- purchase_status: required, non_null
- estimated_total_cost: optional, nullable
- currency_code: required, non_null
- generated_at: server_managed, non_null
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.14 shopping_list_item
- shopping_list_item_id: required, non_null, PK
- shopping_list_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- shopping_category: optional, nullable
- shortage_quantity: required, non_null
- unit_code: required, non_null
- estimated_unit_price: optional, nullable
- estimated_line_cost: optional, nullable
- checked_flag: required, non_null, server_default=false
- checked_by_member_id: optional, nullable, FK
- checked_at: optional, nullable
- store_memo: optional, nullable

### 5.15 user_menu
- user_menu_id: required, non_null, PK
- household_id: required, non_null, FK
- created_by_user_id: required, non_null
- menu_title: required, non_null
- meal_category_tags_json: required, non_null
- cuisine_tags_json: optional, nullable
- season_tags_json: optional, nullable
- dietary_tags_json: optional, nullable
- serving_base: required, non_null
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- memo: optional, nullable
- source_type: required, non_null
- publication_status: required, non_null
- visibility_scope: required, non_null
- lifeos_publish_flag: required, non_null, server_default=false
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.16 user_menu_ingredient
- user_menu_ingredient_id: required, non_null, PK
- user_menu_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- optional_flag: required, non_null, server_default=false

### 5.17 user_menu_publish_request
- submission_id: required, non_null, PK
- user_menu_id: required, non_null, FK
- requested_visibility_scope: required, non_null
- submission_status: required, non_null
- publish_note: optional, nullable
- review_note: optional, nullable
- requested_at: server_managed, non_null
- reviewed_at: optional, nullable

### 5.18 meal_plan_export_job
- export_job_id: required, non_null, PK
- household_id: required, non_null, FK
- requested_by_user_id: required, non_null
- target_scope: required, non_null
- target_plan_id: required, non_null, FK
- export_format: required, non_null
- column_profile_json: required, non_null
- locale_code: optional, nullable
- encoding: required, non_null, server_default=utf-8
- export_status: required, non_null
- file_name: optional, nullable
- generated_at: optional, nullable
- created_at: server_managed, non_null

## 6. screen_io_required_rules

### weekly_meal_planner input
- meal_plan_id: optional on first generate, required on detail/edit
- household_id: required
- target_start_date: required
- target_end_date: required
- budget_tier: required
- meal_categories: required
- dietary_rules: optional
- pantry_mode: optional

### daily_meal_detail input
- meal_plan_id: required
- meal_date: required
- meal_slot_id: optional for page open, required for slot update/history record

### monthly_meal_planner input
- household_id: required
- target_start_date: required
- target_end_date: required
- budget_tier: required
- event_hints: optional
- seasonal_hints: optional

### user_menu_editor input
- user_id: required on create
- household_id: required on create
- menu_master_id_or_user_menu_id: required on update
- menu_title: required
- ingredients: required on create, optional on partial update

## 7. normalization_guidance
- optional + nullable fields should not be overused for required business meaning
- snapshot fields are required when display continuity matters
- source_type driven reference ids should remain required in persisted rows
- JSON arrays may be nullable in DB but should prefer empty array in API response

## 8. response_shaping_guidance
- DB nullable text fields:
  - API response may return null
- DB nullable JSON arrays:
  - API response should prefer []
- DB nullable numeric estimates:
  - API response may return null when unknown
