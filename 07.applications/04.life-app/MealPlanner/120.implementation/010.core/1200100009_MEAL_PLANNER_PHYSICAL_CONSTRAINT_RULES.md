# MealPlanner Physical Constraint Rules

## 1. purpose
論理設計から物理実装へ移る際の exact 制約方針を固定する。

## 2. not_null_priority_fields
以下は物理実装で NOT NULL を優先する
- household_id
- member_id
- budget_tier
- plan_horizon
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- ingredient_reference_id
- ingredient_name_snapshot
- source_type
- publication_status
- visibility_scope
- export_format
- export_status

## 3. check_constraint_candidates
### budget_tier
- CHECK budget_tier IN ('saving','standard','generous')

### plan_horizon
- CHECK plan_horizon IN ('daily','weekly','monthly')

### meal_category
- CHECK meal_category IN ('breakfast','lunch','dinner','snack')

### source_type
- CHECK source_type IN ('system_seed','cx22073jw_base','user_private','user_published')

### publication_status
- CHECK publication_status IN ('private','draft','review_pending','published','rejected')

### actual_result_type
- CHECK actual_result_type IN ('planned','changed','skipped','eating_out','convenience_food')

### export_status
- CHECK export_status IN ('requested','generated','failed')

## 4. positive_numeric_candidates
- servings > 0
- quantity >= 0
- shortage_quantity >= 0
- derived_weekly_budget_amount >= 0
- derived_monthly_reference_amount >= 0
- derived_budget_amount >= 0
- estimated_cost >= 0 when not null
- estimated_kcal >= 0 when not null
- estimated_unit_price >= 0 when not null
- estimated_line_cost >= 0 when not null
- usage_count >= 0

## 5. date_range_candidates
- meal_plan.target_start_date <= meal_plan.target_end_date
- monthly horizon では target range が月単位に整合することを app / service 層で検証
- weekly horizon では 7日幅整合を app / service 層で検証
- daily horizon では start = end を app / service 層で検証

## 6. cross_field_rules
- meal_slot.changed_reason is nullable, but recommended when changed_flag=true
- user_menu.lifeos_publish_flag=true implies publication_status in ('review_pending','published')
- checked_at should be null when checked_flag=false
- reviewed_at should be null until review completion
- file_name should be null until export_status='generated'

## 7. implementation_notes
- 複雑な cross-field 制約は DB CHECK に入れすぎず service 層で担保してよい
- enum 系は CHECK で強めに固定する
- 外部正本参照は FK でなく logical reference を優先する
