# MealPlanner CSV Free Paid Final Policy

## 1. purpose
CSV 出力の無料 / 有料差を最終固定する。

## 2. core_conclusion
- CSV 出力自体は free / paid の両方で利用可能
- ただし、出力できる元データ範囲と補助情報に差を設ける

## 3. free_policy
allowed:
- daily CSV
- weekly CSV
- monthly CSV
- standard column set
- 自分が見えている範囲の献立表出力

limits:
- 出力元データは無料で見えている範囲のみ
- 30日より前の履歴由来列は含めない
- pantry 連携由来の補助列は含めない
- nutrition summary 由来列は含めない
- shared household collaboration 補助列は含めない

## 4. paid_policy
allowed:
- daily CSV
- weekly CSV
- monthly CSV
- standard column set
- optional column set
- nutrition related optional columns
- shared household context columns if later adopted
- 長期利用文脈を含む出力

## 5. standard_column_set_available_to_both
- plan_scope
- date
- weekday
- meal_category
- menu_name
- source_type
- servings
- estimated_cost
- currency_code
- memo
- actual_status

## 6. optional_columns_paid_preferred
- household_name
- budget_tier
- derived_budget_amount
- estimated_kcal
- changed_flag
- changed_reason
- publication_status
- export_generated_at

## 7. final_output_policy
- free:
  - standard_columns_only
- paid:
  - standard_columns + optional_columns

## 8. filename_policy
- free / paid 共通
- daily:
  - mealplan_daily_YYYYMMDD.csv
- weekly:
  - mealplan_weekly_YYYYMMDD.csv
- monthly:
  - mealplan_monthly_YYYYMM.csv

## 9. copy_policy
- free copy:
  - CSV出力できます
- paid upsell copy:
  - 有料では、より詳しい列も出力できます

## 10. non_goals
- free で CSV 自体を禁止しない
- paid の価値を CSVだけに寄せない
