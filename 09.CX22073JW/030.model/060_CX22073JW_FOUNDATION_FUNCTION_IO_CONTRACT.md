# CX22073JW Foundation Function I/O Contract
- project: CX22073JW
- document_type: foundation-function-io-contract
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the I/O contract style of foundation functions.

## 2. Contract Principles

### 2-1. Input Principle
Function input should receive:
- caller-side runtime values
- profile_code / metric_code / item_code style identifiers
- filtering arrays where needed
- temporary scenario inputs only

Function input should not require:
- persistent user state inside CX22073JW
- workflow-specific runtime records inside CX22073JW

### 2-2. Output Principle
Function output should return:
- resolved reference values
- compare results
- score labels
- candidate rankings
- explanation-ready detail values

Function output should not directly persist:
- user-specific final history
- user-specific final state
- workflow execution logs outside controlled runbook cases

## 3. Current Function Families

### 3-1. BodyMetrics compare family
Representative functions:
- `fn_phase1_bodymetrics_metric_score`
- `fn_phase1_bodymetrics_total_band`
- `fn_phase1_bodymetrics_comment_candidates`

Input style:
- profile_code
- metric_code / total_score
- input_value
- optional condition_code

Output style:
- compare band
- score
- label
- comment candidates

### 3-2. MealPlanner compare family
Representative functions:
- `fn_phase1_mealplanner_nutrition_compare`
- `fn_phase1_mealplanner_food_nutrient_compare`

Input style:
- profile_code
- item_code / nutrient_code
- actual_value or food_code

Output style:
- reference comparison
- percent of reference
- label / comparison state

### 3-3. Deficit candidate family
Representative functions:
- `fn_phase1_mealplanner_deficit_food_candidates`
- `fn_phase1_mealplanner_deficit_food_detail`
- `fn_phase1_mealplanner_recipe_nutrient_detail`
- `fn_phase1_mealplanner_deficit_recipe_candidates`
- `fn_phase1_mealplanner_deficit_recipe_detail`

Input style:
- profile_code
- target nutrient arrays
- allergen/tag/price filters
- optional meal slot

Output style:
- ranked candidates
- matched nutrient summary
- contribution detail

## 4. Identifier Policy
Function I/O should prefer stable identifiers:
- profile_code
- metric_code
- nutrient_code
- recipe_code
- food_code
instead of raw internal ids when possible.

## 5. Null / Optional Policy
Optional filters should be explicit.
Examples:
- `NULL::text[]`
- `ARRAY[]::text[]`
- `NULL::text`

This avoids type ambiguity and keeps Termux execution stable.

## 6. Determinism Policy
Foundation functions should be deterministic with respect to:
- current stored reference data
- explicit input parameters

They should avoid hidden session-specific state.

## 7. Conclusion
Foundation function I/O must stay:
- identifier-oriented
- app-consumable
- deterministic
- boundary-safe
