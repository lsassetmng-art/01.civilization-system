# MealPlanner CSV Exact Definition

## 1. purpose
MealPlanner の CSV 出力列を exact に固定する。

## 2. common_principles
- UTF-8 を正とする
- 1食1行を基本とする
- 列順は固定し、任意列は profile で ON/OFF する
- locale に応じて見出し文言は変えてよい
- 内部キー列は標準出力に含めない
- 人に見せられる CSV を優先する

## 3. target_scopes
- daily
- weekly
- monthly

## 4. standard_column_set
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

## 5. optional_column_set
- household_name
- budget_tier
- derived_budget_amount
- estimated_kcal
- changed_flag
- changed_reason
- publication_status
- export_generated_at

## 6. default_profiles

### daily_default_profile
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

### weekly_default_profile
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

### monthly_default_profile
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

## 7. column_meaning

### plan_scope
- daily / weekly / monthly

### date
- meal_slot.meal_date

### weekday
- meal_date から導出する曜日表示

### meal_category
- breakfast / lunch / dinner / snack の表示名

### menu_name
- meal_slot.menu_title_snapshot または表示用 menu_title

### source_type
- 基本献立
- 自分の献立
- 公開献立
- システム初期
の表示用変換値

### servings
- 何人分か

### estimated_cost
- 概算コスト

### currency_code
- 表示通貨

### memo
- meal_slot.memo

### actual_status
- planned / changed / skipped / eating_out / convenience_food の表示用変換値

### budget_tier
- 節約 / 普通 / 多め

### derived_budget_amount
- 日 / 週 / 月の対象範囲に応じた参考予算

### estimated_kcal
- 推定 kcal
- null の場合は空欄

### changed_flag
- true / false 表示
- 標準 profile では通常不要

### changed_reason
- 変更理由
- null の場合は空欄

### publication_status
- private / review_pending / published など
- 標準 profile では通常不要

### export_generated_at
- 出力作成日時

## 8. header_copy_ja

### standard_headers
- plan_scope: 出力対象
- date: 日付
- weekday: 曜日
- meal_category: 食事区分
- menu_name: 献立名
- source_type: 献立種別
- servings: 人数
- estimated_cost: 概算費用
- currency_code: 通貨
- memo: メモ
- actual_status: 実績状態

### optional_headers
- household_name: 家庭名
- budget_tier: 予算帯
- derived_budget_amount: 参考予算
- estimated_kcal: 推定kcal
- changed_flag: 変更有無
- changed_reason: 変更理由
- publication_status: 公開状態
- export_generated_at: 出力日時

## 9. file_name_policy
- daily:
  - mealplan_daily_YYYYMMDD.csv
- weekly:
  - mealplan_weekly_YYYYMMDD.csv
- monthly:
  - mealplan_monthly_YYYYMM.csv

## 10. empty_value_policy
- null text:
  - 空欄
- null numeric:
  - 空欄
- null enum-like:
  - 空欄
- boolean:
  - true / false ではなく表示語へ変換してもよい

## 11. non_goals
- DB内部IDの露出
- JSONそのまま出力
- 技術列の露出
