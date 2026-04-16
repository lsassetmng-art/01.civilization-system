# MealPlanner Component Event Payload Detail

## 1. purpose
主要 component の event payload を exact に固定する。

## 2. common_rules
- event payload は UI内部都合だけで shape を崩さない
- source_type / publication_status / ids を落とさない
- null 許容値は明示する
- event 名は意味ベースにする

## 3. plan_horizon_selector

### on_change payload
{
  "next_horizon": "weekly"
}

## 4. budget_tier_selector

### on_change payload
{
  "next_budget_tier": "saving"
}

## 5. meal_slot_card

### on_tap payload
{
  "meal_slot_id": "slot_001",
  "meal_date": "2026-04-14",
  "meal_category": "dinner"
}

### on_replace payload
{
  "meal_plan_id": "plan_001",
  "meal_slot_id": "slot_001",
  "current_menu_reference_id": "menu_1001",
  "source_type": "cx22073jw_base"
}

### on_open_actions payload
{
  "meal_slot_id": "slot_001",
  "actual_status": "planned",
  "changed_flag": false
}

## 6. weekly_grid

### on_slot_tap payload
{
  "meal_slot_id": "slot_001",
  "meal_date": "2026-04-14",
  "meal_category": "dinner"
}

### on_empty_slot_tap payload
{
  "meal_date": "2026-04-15",
  "meal_category": "lunch"
}

## 7. monthly_week_block_card

### on_open_week payload
{
  "week_start_date": "2026-04-13",
  "week_end_date": "2026-04-19",
  "derived_week_plan_id": "plan_week_001"
}

### on_derive_week payload
{
  "monthly_meal_plan_id": "plan_month_001",
  "target_week_start_date": "2026-04-13"
}

## 8. shopping_item_row

### on_toggle_check payload
{
  "shopping_list_id": "shop_001",
  "shopping_list_item_id": "item_001",
  "checked_flag": true,
  "checked_by_member_id": "member_001"
}

### on_store_memo_change payload
{
  "shopping_list_item_id": "item_001",
  "store_memo": "ドラッグストアで確認"
}

## 9. pantry_item_row

### on_edit payload
{
  "pantry_item_id": "pantry_001"
}

### on_delete payload
{
  "pantry_item_id": "pantry_001"
}

## 10. user_menu_editor_form

### on_change payload
{
  "field_name": "menu_title",
  "value": "我が家の鶏そぼろ丼"
}

### on_save payload
{
  "mode": "create",
  "menu_id": null
}

### on_submit_publish payload
{
  "menu_master_id": "menu_user_001",
  "requested_visibility_scope": "lifeos_public"
}

## 11. csv_export_button

### on_export payload
{
  "target_scope": "weekly",
  "target_plan_id": "plan_001",
  "allowed_column_profile_type": "standard_only"
}

## 12. free_limit_banner

### on_upgrade payload
{
  "limit_type": "template_limit"
}

## 13. upgrade_teaser_card

### on_upgrade payload
{
  "teaser_type": "pantry"
}

### on_close payload
{
  "teaser_type": "pantry"
}

## 14. notification_toggle_group

### on_change payload
{
  "field_name": "weekly_plan_notice_enabled",
  "value": true
}

## 15. event_integrity_rules
- payload には最低限の id を含める
- destructive event は対象 id 必須
- update event は field_name と value を明示
- publish event は requested_visibility_scope を明示
