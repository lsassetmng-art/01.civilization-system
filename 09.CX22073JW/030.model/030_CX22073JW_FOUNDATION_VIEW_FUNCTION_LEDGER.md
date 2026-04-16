# CX22073JW Foundation View / Function Ledger
- project: CX22073JW
- document_type: foundation-view-function-ledger
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. 目的
本書は、CX22073JW に作成済みの基盤 view / function を
台帳化するための文書である。

---

## 2. view ledger

### 2-1. monitoring / readiness
- `vw_phase1_health_reference_readiness`
- `vw_phase1_health_score_matrix`
- `vw_phase1_health_score_comment_rule`
- `vw_phase1_ingredient_filter_matrix`
- `vw_phase1_ingredient_tag_detail`
- `vw_phase1_nutrition_reference_matrix`
- `vw_phase1_nutrition_coverage_summary`
- `vw_phase1_bodymetrics_runtime`
- `vw_phase1_mealplanner_runtime`

### 2-2. bodymetrics helper
- `vw_phase1_bodymetrics_rule_set_resolution`
- `vw_phase1_bodymetrics_metric_score_basis`
- `vw_phase1_bodymetrics_total_band_basis`
- `vw_phase1_bodymetrics_comment_basis`
- `vw_phase1_bodymetrics_composite_rule_basis`
- `vw_phase1_bodymetrics_profile_readiness`

### 2-3. mealplanner helper
- `vw_phase1_mealplanner_nutrition_profile_basis`
- `vw_phase1_mealplanner_ingredient_filter_basis`
- `vw_phase1_mealplanner_food_nutrient_basis`
- `vw_phase1_mealplanner_nutrition_target_basis`
- `vw_phase1_mealplanner_food_to_reference_bridge`
- `vw_phase1_mealplanner_budget_friendly_candidates`
- `vw_phase1_mealplanner_high_protein_candidates`
- `vw_phase1_mealplanner_low_sodium_candidates`
- `vw_phase1_mealplanner_profile_readiness`

---

## 3. function ledger

### 3-1. bodymetrics compare / score
- `fn_phase1_bodymetrics_metric_score`
- `fn_phase1_bodymetrics_total_band`
- `fn_phase1_bodymetrics_comment_candidates`

### 3-2. mealplanner compare
- `fn_phase1_mealplanner_nutrition_compare`
- `fn_phase1_mealplanner_food_nutrient_compare`

### 3-3. deficit -> food
- `fn_phase1_mealplanner_deficit_food_candidates`
- `fn_phase1_mealplanner_deficit_food_detail`

### 3-4. deficit -> recipe
- `fn_phase1_mealplanner_recipe_nutrient_detail`
- `fn_phase1_mealplanner_deficit_recipe_candidates`
- `fn_phase1_mealplanner_deficit_recipe_detail`

---

## 4. 責務整理

| group | role | main consumer |
|------|------|---------------|
| monitoring views | readiness / coverage / visibility | operations, debugging |
| bodymetrics helper views | profile/rule/reference 解決 | BodyMetrics |
| mealplanner helper views | food/nutrient/reference 解決 | MealPlanner |
| bodymetrics functions | compare / score / comment | BodyMetrics |
| mealplanner compare functions | intake / nutrient comparison | MealPlanner |
| deficit candidate functions | recommendation basis | MealPlanner |

---

## 5. 設計原則
- view は read-only foundation interface
- function は deterministic reusable logic
- runbook は operations asset
- user-specific runtime data は保持しない
- app-side input を受けて reusable reference logic を返す

---

## 6. 次段候補
今後この台帳に追加される候補:
- exercise compare helper
- lifestyle benchmark helper
- legal checklist helper
- inheritance preparation helper
- careerlaunch document/workspace helper
