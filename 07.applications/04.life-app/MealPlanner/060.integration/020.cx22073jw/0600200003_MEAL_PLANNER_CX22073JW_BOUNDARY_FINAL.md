# MealPlanner CX22073JW Boundary Final

## 1. purpose
MealPlanner と CX22073JW の責務境界を正式化する。

## 2. core_conclusion
- CX22073JW:
  - 基礎知識
  - 公開知識
  - 辞書知識
  - 参照知識
- MealPlanner:
  - household 固有設定
  - private データ
  - 実績
  - 運用状態
  - 提案実行結果
- LifeOS:
  - 公開フロー
  - 公開状態の公式反映

## 3. CX22073JW primary domains

### ingredient_knowledge
- ingredient_master_base
- ingredient_multilingual_name_dictionary
- ingredient_synonym_dictionary
- ingredient_category_taxonomy
- allergen_tag_master
- dietary_tag_master
- storage_type_reference
- shelf_life_reference_base
- seasonality_reference
- nutrition_reference_base
- purchasable_unit_reference

### menu_knowledge
- menu_master_base
- menu_category_taxonomy
- cuisine_type_master
- season_tag_master
- meal_timing_tag_master
- difficulty_level_master
- prep_time_band_master
- default_serving_reference
- basic_cost_band_reference
- menu_dietary_compatibility_tags
- menu_nutrition_profile_reference

### substitution_knowledge
- ingredient_substitution_rules
- menu_substitution_rules
- allergy_safe_substitution_reference
- low_cost_substitution_reference
- seasonal_substitution_reference

### shopping_knowledge
- shopping_category_master
- ingredient_to_store_section_mapping
- standard_package_size_reference
- household_purchase_grouping_rules
- unit_normalization_reference

### meal_pattern_knowledge
- daily_pattern_templates_base
- weekly_pattern_templates_base
- monthly_pattern_templates_base
- budget_tier_pattern_reference
- family_size_pattern_reference
- event_day_pattern_reference

### locale_food_culture_knowledge
- locale_specific_food_names
- regional_meal_customs
- locale_unit_preferences
- locale_meal_examples
- seasonal_event_food_reference

### published_user_menu_catalog
- published_user_menu_master
- published_user_menu_version
- published_user_menu_origin_info
- published_user_menu_tags
- published_user_menu_visibility_scope

### provenance_and_quality_metadata
- source_type
- source_origin
- reviewed_flag
- quality_score_reference
- locale_validity_scope
- effective_version
- deprecated_flag

## 4. MealPlanner local domains

### household_runtime_data
- family_profile
- family_member_preference
- budget_profile
- goal_profile
- dietary_rule

### plan_runtime_data
- meal_plan
- meal_slot
- meal_history
- shopping_list
- shopping_list_item
- meal_plan_export_job

### private_menu_data
- user_menu private
- user_menu_ingredient
- user_menu_publish_request

### local_runtime_helpers
- reference cache
- overlay
- snapshot text
- local indexes
- free/paid gating context
- household entitlement cache optional

## 5. data_direction_rules
- CX22073JW -> MealPlanner:
  - read primary
  - cache optional
- MealPlanner -> CX22073JW:
  - direct primary write しない
- MealPlanner -> LifeOS publish:
  - submit publish request
- LifeOS publish -> CX22073JW:
  - 公開済み知識反映の公式経路
- LifeOS publish -> MealPlanner:
  - publish status return

## 6. cache_rules
allowed:
- ingredient_reference_cache
- menu_reference_cache
- published_user_menu_reference_cache
- snapshot fields
- overlay fields

not_allowed:
- CX22073JW 正本の無秩序複製
- private data を CX22073JW 正本として扱うこと
- 審査前 private user_menu の public catalog 混入

## 7. search_and_suggestion_rules
MealPlanner の提案候補は次を混在可能:
- cx22073jw_base
- user_private
- user_published

優先ロジックは MealPlanner 側責務であり、
CX22073JW 側は候補知識の正本を担う。

## 8. source_type rules
- system_seed:
  - app 初期値や seed
- cx22073jw_base:
  - CX22073JW 基礎知識由来
- user_private:
  - household 内 private 献立
- user_published:
  - 公開済み user 献立参照

## 9. strict_boundary_rules
- MealPlanner は CX22073JW 正本食材を編集しない
- MealPlanner は CX22073JW 正本基本献立を編集しない
- 公開 user menu の正本更新権は publish flow 後続責務に従う
- private user menu と published user menu は同じ意味で扱わない

## 10. fallback_rules
- CX22073JW 未取得時:
  - reference cache 使用可
  - private user menu 使用可
  - snapshot 使用可
- ただし新規基礎知識更新は遅延しうる

## 11. non_goals
- MealPlanner から CX22073JW の物理設計を決めない
- CX22073JW の審査 / 品質採点内部ロジックを MealPlanner に持ち込まない
