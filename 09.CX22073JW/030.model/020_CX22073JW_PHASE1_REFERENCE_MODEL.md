# CX22073JW Phase1 Reference Model
- project: CX22073JW
- document_type: phase1-reference-model
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Health Reference Group
Main tables:
- `health_metric_master`
- `health_reference_range`
- `health_measurement_condition_master`
- `health_reference_profile`
- `health_reference_source`

## 2. Health Score Group
Main tables:
- `health_score_rule_set`
- `health_score_metric_band`
- `health_score_total_band`
- `health_score_comment_template`
- `health_score_composite_rule`

## 3. Food / Nutrition Group
Main tables:
- `food_item_master`
- `nutrient_master`
- `food_nutrient_fact`
- `ingredient_category_master`
- `ingredient_allergen`
- `ingredient_dietary_tag`
- `ingredient_price_band`

## 4. Intake Reference Group
Main tables:
- `nutrition_reference_profile`
- `nutrition_reference_item_master`
- `nutrition_reference_source`
- `nutrition_intake_reference`

## 5. Recipe / Meal Group
Main tables:
- `recipe_template_master`
- `recipe_template_item`
- `meal_plan_template`
- `meal_plan_template_slot`
