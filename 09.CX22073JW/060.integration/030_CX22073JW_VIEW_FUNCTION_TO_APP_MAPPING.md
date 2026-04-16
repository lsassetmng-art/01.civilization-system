# CX22073JW View / Function to App Mapping
- project: CX22073JW
- document_type: view-function-to-app-mapping
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document maps foundation views/functions to consuming apps.

## 2. Mapping

### 2-1. Monitoring / Readiness Views
Representative assets:
- `vw_phase1_health_reference_readiness`
- `vw_phase1_health_score_matrix`
- `vw_phase1_nutrition_coverage_summary`
- `vw_phase1_bodymetrics_runtime`
- `vw_phase1_mealplanner_runtime`

Main consumers:
- development
- operations
- implementation verification

### 2-2. BodyMetrics Helper Views
Representative assets:
- `vw_phase1_bodymetrics_rule_set_resolution`
- `vw_phase1_bodymetrics_metric_score_basis`
- `vw_phase1_bodymetrics_total_band_basis`
- `vw_phase1_bodymetrics_comment_basis`
- `vw_phase1_bodymetrics_composite_rule_basis`
- `vw_phase1_bodymetrics_profile_readiness`

Main consumers:
- BodyMetrics
- testing / verification SQL

### 2-3. BodyMetrics Functions
Representative assets:
- `fn_phase1_bodymetrics_metric_score`
- `fn_phase1_bodymetrics_total_band`
- `fn_phase1_bodymetrics_comment_candidates`

Main consumers:
- BodyMetrics
- future TrainingCoach bridge

### 2-4. MealPlanner Helper Views
Representative assets:
- `vw_phase1_mealplanner_ingredient_filter_basis`
- `vw_phase1_mealplanner_food_nutrient_basis`
- `vw_phase1_mealplanner_nutrition_target_basis`
- `vw_phase1_mealplanner_food_to_reference_bridge`
- `vw_phase1_mealplanner_budget_friendly_candidates`
- `vw_phase1_mealplanner_high_protein_candidates`
- `vw_phase1_mealplanner_low_sodium_candidates`
- `vw_phase1_mealplanner_profile_readiness`

Main consumers:
- MealPlanner
- recommendation verification SQL

### 2-5. MealPlanner Functions
Representative assets:
- `fn_phase1_mealplanner_nutrition_compare`
- `fn_phase1_mealplanner_food_nutrient_compare`
- `fn_phase1_mealplanner_deficit_food_candidates`
- `fn_phase1_mealplanner_deficit_food_detail`
- `fn_phase1_mealplanner_recipe_nutrient_detail`
- `fn_phase1_mealplanner_deficit_recipe_candidates`
- `fn_phase1_mealplanner_deficit_recipe_detail`

Main consumers:
- MealPlanner
- future TrainingCoach / Food guidance bridge

### 2-6. Runbook SQL Assets
Representative assets:
- multi-compare runbook
- deficit runbook
- meal-slot runbook

Main consumers:
- development
- operations
- design validation

## 3. Integration Principle
Apps should depend on:
- stable view/function interfaces
rather than
- raw table joins in many places

This reduces duplicated query logic and drift.

## 4. Conclusion
The view/function layer is a reusable application-facing foundation layer.
