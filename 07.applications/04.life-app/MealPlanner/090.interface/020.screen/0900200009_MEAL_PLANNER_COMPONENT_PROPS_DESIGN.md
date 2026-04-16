# MealPlanner Component Props Design

## 1. purpose
MealPlanner の主要 UI component について、
props の意味境界を実装前に固定する。

## 2. general_rules
- props 名は snake_case ではなく UI 実装側命名へ変換されてもよい
- ただし意味は API / Screen I/O と一致させる
- component は business meaning を勝手に作らない
- enum 値は API の正規値を保持できるようにする
- free / paid gating は component 内で判断しすぎず、screen から渡す

## 3. plan_horizon_selector
### responsibility
- 日 / 週 / 月の選択UI

### props
- selected_horizon:
  - daily / weekly / monthly
- enabled_horizons:
  - selectable horizon list
- on_change:
  - next_horizon -> void
- show_labels:
  - boolean
- disabled:
  - boolean

### notes
- 文言変換は UI copy に従う

## 4. budget_tier_selector
### responsibility
- 節約 / 普通 / 多めの選択UI

### props
- selected_budget_tier
- derived_weekly_budget_amount
- derived_monthly_reference_amount
- currency_code
- disabled
- on_change

### rules
- budget_tier は required meaning
- derived 金額は補助表示であり、主選択は tier

## 5. source_type_badge
### responsibility
- 献立ソース表示

### props
- source_type
- compact_mode
- show_icon

### allowed_source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

## 6. publication_status_badge
### responsibility
- 公開状態表示

### props
- publication_status
- compact_mode

### allowed_publication_status
- private
- draft
- review_pending
- published
- rejected

## 7. meal_slot_card
### responsibility
- 1食分の表示

### props
- meal_slot_id
- meal_date
- meal_category
- menu_reference_id_or_menu_master_id
- menu_title
- source_type
- publication_status_nullable
- servings
- estimated_cost_nullable
- estimated_kcal_nullable
- memo_nullable
- changed_flag
- changed_reason_nullable
- actual_status
- currency_code
- on_tap
- on_replace
- on_open_actions
- is_editable
- show_cost
- show_kcal

### rules
- menu_title is always display-required
- source_type is display-required
- publication_status is optional display context

## 8. weekly_grid
### responsibility
- 週間枠の一覧表示

### props
- week_start_date
- week_end_date
- slots
- is_editable
- show_budget_context
- on_slot_tap
- on_slot_replace
- on_empty_slot_tap

### slot_item_shape
- must match meal_slot_card minimum fields

## 9. monthly_week_block_card
### responsibility
- 月次内の週ブロック表示

### props
- week_start_date
- week_end_date
- theme_label_nullable
- estimated_budget_amount_nullable
- derived_week_plan_id_nullable
- on_open_week
- on_derive_week

## 10. shopping_item_row
### responsibility
- 買い物明細表示

### props
- shopping_list_item_id
- ingredient_reference_id
- ingredient_name
- shopping_category_nullable
- shortage_quantity
- unit_code
- estimated_unit_price_nullable
- estimated_line_cost_nullable
- currency_code
- checked_flag
- checked_by_member_id_nullable
- checked_at_nullable
- store_memo_nullable
- can_check
- can_edit_store_memo
- on_toggle_check
- on_store_memo_change

## 11. pantry_item_row
### responsibility
- 在庫明細表示

### props
- pantry_item_id
- ingredient_reference_id
- ingredient_name
- quantity
- unit_code
- expiry_date_nullable
- storage_type_nullable
- opened_flag
- note_nullable
- is_editable
- on_edit
- on_delete

## 12. user_menu_editor_form
### responsibility
- user_menu 作成 / 編集フォーム

### props
- mode:
  - create / update
- menu_id_nullable
- menu_title
- meal_category_tags
- cuisine_tags
- season_tags
- dietary_tags
- serving_base
- prep_time_minutes_nullable
- estimated_cost_nullable
- ingredients
- memo_nullable
- visibility_scope
- publication_status
- source_type
- can_submit_publish
- on_change
- on_save
- on_submit_publish

### ingredient_row_shape
- ingredient_id_nullable
- ingredient_reference_id_nullable
- ingredient_name
- quantity
- unit_code

## 13. csv_export_button
### responsibility
- CSV出力開始

### props
- target_scope:
  - daily / weekly / monthly
- target_plan_id
- is_enabled
- is_loading
- allowed_column_profile_type:
  - standard_only / standard_plus_optional
- on_export

### rules
- free:
  - standard_only
- paid:
  - standard_plus_optional

## 14. free_limit_banner
### responsibility
- 無料上限制限の表示

### props
- limit_type:
  - template_limit / favorite_limit / history_limit
- current_count_nullable
- limit_count_nullable
- on_upgrade
- on_close

## 15. upgrade_teaser_card
### responsibility
- 有料機能案内

### props
- teaser_type:
  - pantry
  - nutrition
  - family_share
  - lifeos_integration
  - shared_check
  - template_limit
  - favorite_limit
  - history_limit
- title
- body
- price_text
- support_note
- on_upgrade
- on_close

## 16. empty_state_card
### responsibility
- 空状態表示

### props
- state_type
- title
- description_nullable
- primary_action_label_nullable
- on_primary_action_nullable

## 17. error_state_card
### responsibility
- エラー状態表示

### props
- title
- message
- retry_label_nullable
- on_retry_nullable

## 18. screen_to_component_contract_rules
- screen は entitlement を判定して component に渡す
- component は business rule を再判定しない
- component は API を直接知らなくてよい
- display-only component は source_type / publication_status を落とさない
