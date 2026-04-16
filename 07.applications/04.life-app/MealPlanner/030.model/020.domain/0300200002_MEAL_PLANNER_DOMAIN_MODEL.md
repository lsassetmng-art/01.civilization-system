# MealPlanner Domain Model

## 主要エンティティ
- meal_plan
- meal_slot
- menu_master
- ingredient
- pantry_item
- shopping_list
- shopping_list_item
- dietary_rule
- family_profile
- family_member_preference
- favorite_menu
- meal_template
- nutrition_summary
- meal_history
- budget_profile
- goal_profile
- user_menu_submission
- meal_plan_export_job

## 重要補助属性
### meal_plan
- plan_horizon: daily / weekly / monthly
- generation_mode: manual / auto_draft / derived_from_monthly / derived_from_weekly

### menu_master
- source_type: system_seed / cx22073jw_base / user_private / user_published
- publication_status: private / draft / review_pending / published / rejected

### budget_profile
- budget_tier: saving / standard / generous
- derived_weekly_budget_amount
- derived_monthly_reference_amount

## モデル境界
- private user_menu は MealPlanner 側
- published user_menu catalog は CX22073JW / LifeOS 側参照前提
