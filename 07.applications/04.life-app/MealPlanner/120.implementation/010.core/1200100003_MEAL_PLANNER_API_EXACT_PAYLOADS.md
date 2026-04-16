# MealPlanner API Exact Payloads

## 1. Generate Plan
### endpoint
POST /api/mealplanner/plan/generate

### request
{
  "user_id": "string",
  "household_id": "string",
  "plan_horizon": "weekly",
  "target_start_date": "2026-04-13",
  "target_end_date": "2026-04-19",
  "budget_tier": "standard",
  "household_size": 3,
  "meal_categories": ["breakfast", "lunch", "dinner", "snack"],
  "dietary_rules": [
    {
      "rule_type": "allergy",
      "target_member_id": "member_001",
      "rule_value": "egg"
    }
  ],
  "disliked_ingredients": ["celery"],
  "preferred_cuisine_tags": ["japanese", "easy"],
  "pantry_mode": "use_if_available",
  "include_user_private_menu": true,
  "include_user_published_menu": true,
  "include_cx22073jw_base_menu": true,
  "activity_hint": {
    "training_day_flag": false,
    "activity_level": "normal"
  },
  "goal_hint": {
    "weight_goal_type": "maintain",
    "salt_attention_flag": true,
    "protein_focus_flag": false
  }
}

### response
{
  "success": true,
  "data": {
    "meal_plan_id": "plan_001",
    "plan_horizon": "weekly",
    "week_start_date": "2026-04-13",
    "week_end_date": "2026-04-19",
    "budget_tier": "standard",
    "derived_budget_amount": 9800,
    "currency_code": "JPY",
    "slots": [
      {
        "meal_slot_id": "slot_001",
        "meal_date": "2026-04-13",
        "meal_category": "dinner",
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "servings": 3,
        "estimated_cost": 780,
        "estimated_kcal": 540
      }
    ],
    "generation_summary": {
      "excluded_by_allergy_count": 4,
      "pantry_priority_applied": true,
      "user_menu_used_count": 1
    }
  }
}

## 2. Get Plan Detail
### endpoint
GET /api/mealplanner/plan/detail?meal_plan_id=plan_001

### response
{
  "success": true,
  "data": {
    "meal_plan_id": "plan_001",
    "household_id": "household_001",
    "plan_horizon": "weekly",
    "target_start_date": "2026-04-13",
    "target_end_date": "2026-04-19",
    "budget_tier": "standard",
    "derived_budget_amount": 9800,
    "currency_code": "JPY",
    "slots": [
      {
        "meal_slot_id": "slot_001",
        "meal_date": "2026-04-13",
        "meal_category": "dinner",
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "publication_status": "published",
        "servings": 3,
        "estimated_cost": 780,
        "estimated_kcal": 540,
        "memo": "塩分控えめ調整",
        "actual_status": "planned"
      }
    ]
  }
}

## 3. Update Plan Slot
### endpoint
POST /api/mealplanner/plan/slot/update

### request
{
  "meal_plan_id": "plan_001",
  "meal_slot_id": "slot_001",
  "menu_master_id": "menu_3001",
  "menu_title_override": null,
  "servings": 3,
  "memo": "家族希望で変更",
  "changed_reason": "family_preference",
  "changed_flag": true
}

### response
{
  "success": true,
  "data": {
    "meal_slot_id": "slot_001",
    "meal_plan_id": "plan_001",
    "menu_master_id": "menu_3001",
    "servings": 3,
    "estimated_cost": 850,
    "estimated_kcal": 610,
    "changed_flag": true,
    "changed_reason": "family_preference"
  }
}

## 4. Derive Week From Monthly
### endpoint
POST /api/mealplanner/plan/derive-week

### request
{
  "monthly_meal_plan_id": "plan_month_001",
  "target_week_start_date": "2026-04-13"
}

### response
{
  "success": true,
  "data": {
    "weekly_meal_plan_id": "plan_week_001",
    "derived_from_plan_id": "plan_month_001",
    "week_start_date": "2026-04-13",
    "week_end_date": "2026-04-19"
  }
}

## 5. Search Menu
### endpoint
POST /api/mealplanner/menu/search

### request
{
  "query": "鶏肉",
  "meal_category": "dinner",
  "budget_tier": "saving",
  "source_filters": ["cx22073jw_base", "user_private", "user_published"],
  "dietary_rules": ["low_salt"],
  "exclude_ingredients": ["egg"],
  "page": 1,
  "page_size": 20
}

### response
{
  "success": true,
  "data": {
    "items": [
      {
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "publication_status": "published",
        "estimated_cost_band": "low",
        "prep_time_band": "15_30_min",
        "serving_base": 2
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  }
}

## 6. Suggest Menu
### endpoint
POST /api/mealplanner/menu/suggest

### request
{
  "meal_date": "2026-04-13",
  "meal_category": "dinner",
  "budget_tier": "saving",
  "household_size": 3,
  "pantry_items": [
    {
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏むね肉",
      "quantity": 2,
      "unit_code": "piece"
    }
  ],
  "dietary_rules": ["low_salt"],
  "preferred_cuisine_tags": ["japanese"],
  "include_user_private_menu": true
}

### response
{
  "success": true,
  "data": {
    "suggestions": [
      {
        "rank": 1,
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "estimated_cost": 780,
        "estimated_kcal": 540,
        "score_summary": {
          "budget_fit": 0.92,
          "pantry_fit": 0.88,
          "dietary_fit": 0.95
        }
      }
    ]
  }
}

## 7. Generate Shopping List
### endpoint
POST /api/mealplanner/shopping/generate

### request
{
  "meal_plan_id": "plan_001",
  "include_pantry_diff": true,
  "group_by": "shopping_category",
  "currency_code": "JPY"
}

### response
{
  "success": true,
  "data": {
    "shopping_list_id": "shop_001",
    "estimated_total_cost": 4200,
    "currency_code": "JPY",
    "items": [
      {
        "shopping_list_item_id": "item_001",
        "ingredient_id": "ing_2001",
        "ingredient_name": "玉ねぎ",
        "shopping_category": "vegetable",
        "shortage_quantity": 2,
        "unit_code": "piece",
        "estimated_unit_price": 60,
        "estimated_line_cost": 120,
        "checked_flag": false
      }
    ]
  }
}

## 8. Check Shopping Item
### endpoint
POST /api/mealplanner/shopping/item/check

### request
{
  "shopping_list_id": "shop_001",
  "shopping_list_item_id": "item_001",
  "checked_flag": true,
  "checked_by_member_id": "member_002"
}

### response
{
  "success": true,
  "data": {
    "shopping_list_item_id": "item_001",
    "checked_flag": true,
    "checked_by_member_id": "member_002",
    "checked_at": "2026-04-14T09:30:00+09:00"
  }
}

## 9. Pantry Upsert
### endpoint
POST /api/mealplanner/pantry/upsert

### request
{
  "household_id": "household_001",
  "items": [
    {
      "pantry_item_id": null,
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏むね肉",
      "quantity": 2,
      "unit_code": "piece",
      "expiry_date": "2026-04-16",
      "storage_type": "frozen",
      "opened_flag": false,
      "note": ""
    }
  ]
}

### response
{
  "success": true,
  "data": {
    "updated_count": 1
  }
}

## 10. Create User Menu
### endpoint
POST /api/mealplanner/user-menu/create

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "menu_title": "我が家の鶏そぼろ丼",
  "meal_category_tags": ["dinner"],
  "cuisine_tags": ["japanese", "home"],
  "season_tags": ["all_season"],
  "dietary_tags": ["high_protein"],
  "serving_base": 3,
  "prep_time_minutes": 20,
  "estimated_cost": 650,
  "ingredients": [
    {
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏ひき肉",
      "quantity": 300,
      "unit_code": "g"
    }
  ],
  "memo": "子ども向けに少し甘め",
  "visibility_scope": "private"
}

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "source_type": "user_private",
    "publication_status": "private",
    "visibility_scope": "private"
  }
}

## 11. Update User Menu
### endpoint
POST /api/mealplanner/user-menu/update

### request
{
  "menu_master_id": "menu_user_001",
  "menu_title": "我が家の鶏そぼろ丼 改",
  "serving_base": 4,
  "estimated_cost": 720,
  "memo": "来客向け"
}

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "updated_at": "2026-04-14T10:00:00+09:00"
  }
}

## 12. Submit User Menu Publish Request
### endpoint
POST /api/mealplanner/user-menu/publish-request

### request
{
  "menu_master_id": "menu_user_001",
  "requested_visibility_scope": "lifeos_public",
  "publish_note": "家庭向け簡単レシピとして公開希望"
}

### response
{
  "success": true,
  "data": {
    "submission_id": "sub_001",
    "menu_master_id": "menu_user_001",
    "submission_status": "review_pending",
    "requested_visibility_scope": "lifeos_public"
  }
}

## 13. Get User Menu Publish Status
### endpoint
GET /api/mealplanner/user-menu/publish-status?menu_master_id=menu_user_001

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "submission_status": "review_pending",
    "publication_status": "draft",
    "requested_visibility_scope": "lifeos_public",
    "review_note": null
  }
}

## 14. Export Meal Plan CSV
### endpoint
POST /api/mealplanner/export/csv

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "target_scope": "weekly",
  "target_plan_id": "plan_001",
  "column_profile": [
    "date",
    "meal_category",
    "menu_name",
    "servings",
    "estimated_cost",
    "memo",
    "actual_status"
  ],
  "locale_code": "ja-JP",
  "encoding": "utf-8"
}

### response
{
  "success": true,
  "data": {
    "export_job_id": "exp_001",
    "export_status": "generated",
    "file_name": "mealplan_weekly_20260413.csv",
    "download_token": "token_001"
  }
}

## 15. Record Meal History
### endpoint
POST /api/mealplanner/history/record

### request
{
  "meal_slot_id": "slot_001",
  "actual_result_type": "eating_out",
  "actual_menu_name": "外食 ラーメン",
  "note": "急な外出のため変更"
}

### response
{
  "success": true,
  "data": {
    "meal_history_id": "hist_001",
    "meal_slot_id": "slot_001",
    "actual_result_type": "eating_out",
    "recorded_at": "2026-04-14T12:30:00+09:00"
  }
}

## 16. Update Budget Tier
### endpoint
POST /api/mealplanner/settings/budget-tier

### request
{
  "household_id": "household_001",
  "budget_tier": "saving"
}

### response
{
  "success": true,
  "data": {
    "household_id": "household_001",
    "budget_tier": "saving",
    "derived_weekly_budget_amount": 7600,
    "derived_monthly_reference_amount": 30400,
    "currency_code": "JPY"
  }
}

## 17. Update Family Profile
### endpoint
POST /api/mealplanner/settings/family-profile

### request
{
  "household_id": "household_001",
  "household_name": "Boss Family",
  "members": [
    {
      "member_id": "member_001",
      "nickname": "Boss",
      "age_group": "adult",
      "likes": ["chicken"],
      "dislikes": ["celery"],
      "allergy_tags": []
    }
  ]
}

### response
{
  "success": true,
  "data": {
    "household_id": "household_001",
    "member_count": 1,
    "updated_at": "2026-04-14T11:00:00+09:00"
  }
}
