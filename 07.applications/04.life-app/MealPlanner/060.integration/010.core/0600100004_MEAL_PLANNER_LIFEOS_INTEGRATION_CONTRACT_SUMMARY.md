# MealPlanner LifeOS Integration Contract Summary

## 1. purpose
MealPlanner と LifeOS 系アプリ / 機能の連携境界を実装前に整理する。

## 2. contract_principles
- 判断結果ではなく条件・傾向・集計を渡す
- MealPlanner が医療判断主体にならない
- household 文脈と user 文脈を混同しない
- paid のみ full integration
- free では teaser or basic non-integrated operation

## 3. integration_targets

### BodyMetrics
MealPlanner sends:
- weight_goal_type context consumption flag
- nutrition_tendency_summary
- salt_attention_flag
- protein_focus_flag

MealPlanner receives:
- latest_weight_goal
- latest_body_trend_hint

boundary:
- 体重や傾向ヒントの利用に留める
- 医療判断に使わない

### TrainingCoach
MealPlanner sends:
- meal_energy_tendency
- protein_focus_flag
- training_day_meal_context optional

MealPlanner receives:
- activity_level_hint
- training_day_flag

boundary:
- 運動量に応じた献立強弱へ使う
- 栄養指導の確定判断はしない

### MoneyPlanner
MealPlanner sends:
- weekly_food_budget_usage
- monthly_food_cost_summary

MealPlanner receives:
- budget_limit_hint
- household_budget_alert_level

boundary:
- budget_tier の補助文脈として使う
- 金額直入力の正本にしない

### LifeOS Publish
MealPlanner sends:
- publish_request_for_user_menu
- requested_visibility_scope
- publish_note

MealPlanner receives:
- submission_status
- publication_status
- review_note_nullable

boundary:
- 審査は LifeOS 側
- MealPlanner 側は申請と表示のみ

## 4. integration_data_shapes_summary

### outbound_shape_example
- household_id
- user_id
- source_app = MealPlanner
- integration_target
- context_type
- context_payload
- generated_at

### inbound_shape_example
- integration_target
- source_app
- source_record_id
- effective_at
- hint_payload

## 5. integration_enablement_policy
- free:
  - teaser only or no full sync
- paid:
  - full enablement allowed

## 6. conflict_policy
- external hint conflicts with local household setting:
  - local household explicit setting wins
- missing external hint:
  - MealPlanner continues standalone
- stale external hint:
  - treat as weak suggestion only

## 7. non_goals
- transport protocol exact
- auth token exact
- sync scheduler exact
- background job design
