
# MealPlanner Index / Unique / FK Matrix

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
MealPlanner の life schema 配下テーブルについて、
index / unique / foreign key を exact に固定する。

## 2. principles
- household 境界の検索を最優先する
- 日付範囲検索、週次/月次検索、履歴検索を重視する
- private / household / public の境界が崩れる join を避ける
- snapshot は表示継続のため保持し、外部参照の不安定さを吸収する
- CX22073JW 正本知識には FK を張らず、MealPlanner 側は reference cache / logical reference を基本とする

## 3. family_profile
### primary_key
- PK (household_id)

### unique
- none_required

### foreign_keys
- none

### indexes
- IDX family_profile_owner_user_id (owner_user_id)
- IDX family_profile_is_active (is_active)

## 4. family_member_preference
### primary_key
- PK (member_id)

### unique
- UQ family_member_preference_household_id_nickname (household_id, nickname)

### foreign_keys
- FK family_member_preference_household_id -> family_profile.household_id

### indexes
- IDX family_member_preference_household_id (household_id)
- IDX family_member_preference_household_id_is_active (household_id, is_active)

## 5. budget_profile
### primary_key
- PK (budget_profile_id)

### unique
- UQ budget_profile_household_id (household_id)

### foreign_keys
- FK budget_profile_household_id -> family_profile.household_id

### indexes
- IDX budget_profile_household_id_budget_tier (household_id, budget_tier)

## 6. goal_profile
### primary_key
- PK (goal_profile_id)

### unique
- UQ goal_profile_household_id (household_id)

### foreign_keys
- FK goal_profile_household_id -> family_profile.household_id

### indexes
- IDX goal_profile_household_id (household_id)

## 7. dietary_rule
### primary_key
- PK (dietary_rule_id)

### unique
- none_required

### foreign_keys
- FK dietary_rule_household_id -> family_profile.household_id
- FK dietary_rule_target_member_id -> family_member_preference.member_id (nullable)

### indexes
- IDX dietary_rule_household_id (household_id)
- IDX dietary_rule_target_member_id (target_member_id)
- IDX dietary_rule_household_id_rule_type (household_id, rule_type)

## 8. meal_plan
### primary_key
- PK (meal_plan_id)

### unique
- none_required

### foreign_keys
- FK meal_plan_household_id -> family_profile.household_id
- FK meal_plan_parent_meal_plan_id -> meal_plan.meal_plan_id (nullable)
- FK meal_plan_budget_profile_id -> budget_profile.budget_profile_id (nullable)
- FK meal_plan_goal_profile_id -> goal_profile.goal_profile_id (nullable)

### indexes
- IDX meal_plan_household_id_target_start_date (household_id, target_start_date)
- IDX meal_plan_household_id_plan_horizon_target_start_date (household_id, plan_horizon, target_start_date)
- IDX meal_plan_parent_meal_plan_id (parent_meal_plan_id)
- IDX meal_plan_created_by_user_id (created_by_user_id)
- IDX meal_plan_household_id_plan_status (household_id, plan_status)

## 9. meal_slot
### primary_key
- PK (meal_slot_id)

### unique
- UQ meal_slot_plan_date_category_sort (meal_plan_id, meal_date, meal_category, sort_order)

### foreign_keys
- FK meal_slot_meal_plan_id -> meal_plan.meal_plan_id

### indexes
- IDX meal_slot_meal_plan_id (meal_plan_id)
- IDX meal_slot_meal_date (meal_date)
- IDX meal_slot_meal_plan_id_meal_date (meal_plan_id, meal_date)
- IDX meal_slot_menu_source_type_menu_reference_id (menu_source_type, menu_reference_id)
- IDX meal_slot_actual_status (actual_status)

## 10. meal_history
### primary_key
- PK (meal_history_id)

### unique
- none_required

### foreign_keys
- FK meal_history_meal_slot_id -> meal_slot.meal_slot_id

### indexes
- IDX meal_history_meal_slot_id (meal_slot_id)
- IDX meal_history_recorded_at (recorded_at)
- IDX meal_history_actual_result_type (actual_result_type)

## 11. meal_template
### primary_key
- PK (meal_template_id)

### unique
- UQ meal_template_household_id_template_name_plan_horizon (household_id, template_name, plan_horizon)

### foreign_keys
- FK meal_template_household_id -> family_profile.household_id

### indexes
- IDX meal_template_household_id (household_id)
- IDX meal_template_household_id_plan_horizon (household_id, plan_horizon)
- IDX meal_template_household_id_is_active (household_id, is_active)

## 12. meal_template_slot
### primary_key
- PK (meal_template_slot_id)

### unique
- UQ meal_template_slot_template_day_category_sort (meal_template_id, relative_day_no, meal_category, sort_order)

### foreign_keys
- FK meal_template_slot_meal_template_id -> meal_template.meal_template_id

### indexes
- IDX meal_template_slot_meal_template_id (meal_template_id)
- IDX meal_template_slot_menu_source_type_menu_reference_id (menu_source_type, menu_reference_id)

## 13. favorite_menu
### primary_key
- PK (favorite_menu_id)

### unique
- UQ favorite_menu_household_source_ref (household_id, menu_source_type, menu_reference_id)

### foreign_keys
- FK favorite_menu_household_id -> family_profile.household_id

### indexes
- IDX favorite_menu_household_id (household_id)
- IDX favorite_menu_household_id_ranking (household_id, ranking)
- IDX favorite_menu_household_id_usage_count (household_id, usage_count)

## 14. pantry_item
### primary_key
- PK (pantry_item_id)

### unique
- none_required

### foreign_keys
- FK pantry_item_household_id -> family_profile.household_id

### indexes
- IDX pantry_item_household_id (household_id)
- IDX pantry_item_household_id_expiry_date (household_id, expiry_date)
- IDX pantry_item_household_id_storage_type (household_id, storage_type)
- IDX pantry_item_ingredient_reference_id (ingredient_reference_id)

## 15. shopping_list
### primary_key
- PK (shopping_list_id)

### unique
- UQ shopping_list_meal_plan_id (meal_plan_id)

### foreign_keys
- FK shopping_list_meal_plan_id -> meal_plan.meal_plan_id
- FK shopping_list_household_id -> family_profile.household_id

### indexes
- IDX shopping_list_household_id (household_id)
- IDX shopping_list_purchase_status (purchase_status)
- IDX shopping_list_generated_at (generated_at)

## 16. shopping_list_item
### primary_key
- PK (shopping_list_item_id)

### unique
- none_required

### foreign_keys
- FK shopping_list_item_shopping_list_id -> shopping_list.shopping_list_id
- FK shopping_list_item_checked_by_member_id -> family_member_preference.member_id (nullable)

### indexes
- IDX shopping_list_item_shopping_list_id (shopping_list_id)
- IDX shopping_list_item_checked_flag (checked_flag)
- IDX shopping_list_item_shopping_category (shopping_category)
- IDX shopping_list_item_ingredient_reference_id (ingredient_reference_id)

## 17. user_menu
### primary_key
- PK (user_menu_id)

### unique
- UQ user_menu_household_created_by_title (household_id, created_by_user_id, menu_title)

### foreign_keys
- FK user_menu_household_id -> family_profile.household_id

### indexes
- IDX user_menu_household_id (household_id)
- IDX user_menu_created_by_user_id (created_by_user_id)
- IDX user_menu_publication_status (publication_status)
- IDX user_menu_visibility_scope (visibility_scope)
- IDX user_menu_source_type (source_type)
- IDX user_menu_lifeos_publish_flag (lifeos_publish_flag)

## 18. user_menu_ingredient
### primary_key
- PK (user_menu_ingredient_id)

### unique
- none_required

### foreign_keys
- FK user_menu_ingredient_user_menu_id -> user_menu.user_menu_id

### indexes
- IDX user_menu_ingredient_user_menu_id (user_menu_id)
- IDX user_menu_ingredient_ingredient_reference_id (ingredient_reference_id)

## 19. user_menu_publish_request
### primary_key
- PK (submission_id)

### unique
- none_required

### foreign_keys
- FK user_menu_publish_request_user_menu_id -> user_menu.user_menu_id

### indexes
- IDX user_menu_publish_request_user_menu_id (user_menu_id)
- IDX user_menu_publish_request_submission_status (submission_status)
- IDX user_menu_publish_request_requested_at (requested_at)

## 20. meal_plan_export_job
### primary_key
- PK (export_job_id)

### unique
- none_required

### foreign_keys
- FK meal_plan_export_job_household_id -> family_profile.household_id
- FK meal_plan_export_job_target_plan_id -> meal_plan.meal_plan_id

### indexes
- IDX meal_plan_export_job_household_id (household_id)
- IDX meal_plan_export_job_target_scope (target_scope)
- IDX meal_plan_export_job_export_status (export_status)
- IDX meal_plan_export_job_created_at (created_at)

## 21. catalog_source_ref
### primary_key
- PK (catalog_source_id)

### unique
- UQ catalog_source_ref_source_triplet (source_system, source_namespace, source_reference_id)

### foreign_keys
- none

### indexes
- IDX catalog_source_ref_source_system (source_system)
- IDX catalog_source_ref_active_flag (active_flag)

## 22. ingredient_reference_cache
### primary_key
- PK (ingredient_reference_id)

### unique
- UQ ingredient_reference_cache_catalog_source_cx22073jw_knowledge_id (catalog_source_id, cx22073jw_knowledge_id)

### foreign_keys
- FK ingredient_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX ingredient_reference_cache_catalog_source_id (catalog_source_id)
- IDX ingredient_reference_cache_category_code (category_code)
- IDX ingredient_reference_cache_updated_at (updated_at)

## 23. menu_reference_cache
### primary_key
- PK (menu_reference_id)

### unique
- UQ menu_reference_cache_catalog_source_cx22073jw_knowledge_id (catalog_source_id, cx22073jw_knowledge_id)

### foreign_keys
- FK menu_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX menu_reference_cache_catalog_source_id (catalog_source_id)
- IDX menu_reference_cache_publication_status (publication_status)
- IDX menu_reference_cache_updated_at (updated_at)

## 24. published_user_menu_reference_cache
### primary_key
- PK (published_menu_reference_id)

### unique
- UQ published_user_menu_reference_cache_origin_user_menu_version (origin_user_id, origin_menu_id, version_no)

### foreign_keys
- FK published_user_menu_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX published_user_menu_reference_cache_catalog_source_id (catalog_source_id)
- IDX published_user_menu_reference_cache_publication_status (publication_status)
- IDX published_user_menu_reference_cache_quality_score (quality_score)
- IDX published_user_menu_reference_cache_updated_at (updated_at)

## 25. optional_household_entitlement_cache
### primary_key
- PK (household_id)

### unique
- UQ optional_household_entitlement_cache_household_id (household_id)

### foreign_keys
- FK optional_household_entitlement_cache_household_id -> family_profile.household_id

### indexes
- IDX optional_household_entitlement_cache_plan_code (plan_code)
- IDX optional_household_entitlement_cache_is_paid (is_paid)
- IDX optional_household_entitlement_cache_effective_to (effective_to)
