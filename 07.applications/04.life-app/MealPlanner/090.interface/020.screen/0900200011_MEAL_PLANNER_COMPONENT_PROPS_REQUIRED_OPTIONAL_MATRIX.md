# MealPlanner Component Props Required Optional Matrix

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
主要 component props の required / optional / nullable を fixed する。

## 2. notation
- required:
  - 必須
- optional:
  - 未指定可
- nullable:
  - null 可
- derived:
  - 他 props から導出される補助値

## 3. plan_horizon_selector
- selected_horizon:
  - required
  - non_null
- enabled_horizons:
  - required
  - non_null
- on_change:
  - required
  - non_null
- show_labels:
  - optional
  - non_null
- disabled:
  - optional
  - non_null

## 4. budget_tier_selector
- selected_budget_tier:
  - required
  - non_null
- derived_weekly_budget_amount:
  - optional
  - nullable
- derived_monthly_reference_amount:
  - optional
  - nullable
- currency_code:
  - optional
  - nullable
- disabled:
  - optional
  - non_null
- on_change:
  - required
  - non_null

## 5. source_type_badge
- source_type:
  - required
  - non_null
- compact_mode:
  - optional
  - non_null
- show_icon:
  - optional
  - non_null

## 6. publication_status_badge
- publication_status:
  - required
  - non_null
- compact_mode:
  - optional
  - non_null

## 7. meal_slot_card
- meal_slot_id:
  - required
  - non_null
- meal_date:
  - required
  - non_null
- meal_category:
  - required
  - non_null
- menu_reference_id_or_menu_master_id:
  - required
  - non_null
- menu_title:
  - required
  - non_null
- source_type:
  - required
  - non_null
- publication_status_nullable:
  - optional
  - nullable
- servings:
  - required
  - non_null
- estimated_cost_nullable:
  - optional
  - nullable
- estimated_kcal_nullable:
  - optional
  - nullable
- memo_nullable:
  - optional
  - nullable
- changed_flag:
  - required
  - non_null
- changed_reason_nullable:
  - optional
  - nullable
- actual_status:
  - required
  - non_null
- currency_code:
  - optional
  - nullable
- on_tap:
  - required
  - non_null
- on_replace:
  - optional
  - nullable
- on_open_actions:
  - optional
  - nullable
- is_editable:
  - optional
  - non_null
- show_cost:
  - optional
  - non_null
- show_kcal:
  - optional
  - non_null

## 8. weekly_grid
- week_start_date:
  - required
  - non_null
- week_end_date:
  - required
  - non_null
- slots:
  - required
  - non_null
- is_editable:
  - optional
  - non_null
- show_budget_context:
  - optional
  - non_null
- on_slot_tap:
  - required
  - non_null
- on_slot_replace:
  - optional
  - nullable
- on_empty_slot_tap:
  - optional
  - nullable

## 9. monthly_week_block_card
- week_start_date:
  - required
  - non_null
- week_end_date:
  - required
  - non_null
- theme_label_nullable:
  - optional
  - nullable
- estimated_budget_amount_nullable:
  - optional
  - nullable
- derived_week_plan_id_nullable:
  - optional
  - nullable
- on_open_week:
  - required
  - non_null
- on_derive_week:
  - optional
  - nullable

## 10. shopping_item_row
- shopping_list_item_id:
  - required
  - non_null
- ingredient_reference_id:
  - required
  - non_null
- ingredient_name:
  - required
  - non_null
- shopping_category_nullable:
  - optional
  - nullable
- shortage_quantity:
  - required
  - non_null
- unit_code:
  - required
  - non_null
- estimated_unit_price_nullable:
  - optional
  - nullable
- estimated_line_cost_nullable:
  - optional
  - nullable
- currency_code:
  - optional
  - nullable
- checked_flag:
  - required
  - non_null
- checked_by_member_id_nullable:
  - optional
  - nullable
- checked_at_nullable:
  - optional
  - nullable
- store_memo_nullable:
  - optional
  - nullable
- can_check:
  - required
  - non_null
- can_edit_store_memo:
  - required
  - non_null
- on_toggle_check:
  - required
  - non_null
- on_store_memo_change:
  - optional
  - nullable

## 11. pantry_item_row
- pantry_item_id:
  - required
  - non_null
- ingredient_reference_id:
  - required
  - non_null
- ingredient_name:
  - required
  - non_null
- quantity:
  - required
  - non_null
- unit_code:
  - required
  - non_null
- expiry_date_nullable:
  - optional
  - nullable
- storage_type_nullable:
  - optional
  - nullable
- opened_flag:
  - required
  - non_null
- note_nullable:
  - optional
  - nullable
- is_editable:
  - required
  - non_null
- on_edit:
  - optional
  - nullable
- on_delete:
  - optional
  - nullable

## 12. user_menu_editor_form
- mode:
  - required
  - non_null
- menu_id_nullable:
  - optional
  - nullable
- menu_title:
  - required
  - non_null
- meal_category_tags:
  - required
  - non_null
- cuisine_tags:
  - optional
  - non_null
- season_tags:
  - optional
  - non_null
- dietary_tags:
  - optional
  - non_null
- serving_base:
  - required
  - non_null
- prep_time_minutes_nullable:
  - optional
  - nullable
- estimated_cost_nullable:
  - optional
  - nullable
- ingredients:
  - required
  - non_null
- memo_nullable:
  - optional
  - nullable
- visibility_scope:
  - required
  - non_null
- publication_status:
  - required
  - non_null
- source_type:
  - required
  - non_null
- can_submit_publish:
  - required
  - non_null
- on_change:
  - required
  - non_null
- on_save:
  - required
  - non_null
- on_submit_publish:
  - optional
  - nullable

## 13. csv_export_button
- target_scope:
  - required
  - non_null
- target_plan_id:
  - required
  - non_null
- is_enabled:
  - required
  - non_null
- is_loading:
  - optional
  - non_null
- allowed_column_profile_type:
  - required
  - non_null
- on_export:
  - required
  - non_null

## 14. free_limit_banner
- limit_type:
  - required
  - non_null
- current_count_nullable:
  - optional
  - nullable
- limit_count_nullable:
  - optional
  - nullable
- on_upgrade:
  - required
  - non_null
- on_close:
  - optional
  - nullable

## 15. upgrade_teaser_card
- teaser_type:
  - required
  - non_null
- title:
  - required
  - non_null
- body:
  - required
  - non_null
- price_text:
  - required
  - non_null
- support_note:
  - required
  - non_null
- on_upgrade:
  - required
  - non_null
- on_close:
  - required
  - non_null

## 16. empty_state_card
- state_type:
  - required
  - non_null
- title:
  - required
  - non_null
- description_nullable:
  - optional
  - nullable
- primary_action_label_nullable:
  - optional
  - nullable
- on_primary_action_nullable:
  - optional
  - nullable

## 17. error_state_card
- title:
  - required
  - non_null
- message:
  - required
  - non_null
- retry_label_nullable:
  - optional
  - nullable
- on_retry_nullable:
  - optional
  - nullable

## 18. notification_toggle_group
- settings:
  - required
  - non_null
- is_paid:
  - required
  - non_null
- on_change:
  - required
  - non_null
- on_blocked_paid_feature:
  - optional
  - nullable
