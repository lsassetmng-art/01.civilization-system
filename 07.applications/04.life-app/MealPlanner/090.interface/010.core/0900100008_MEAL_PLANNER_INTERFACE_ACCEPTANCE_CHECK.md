# MealPlanner Interface Acceptance Check

## 1. purpose
UI / 画面 / CSV / 文言観点での受け入れ条件を整理する。

## 2. screen_check
- dashboard_home が主導線として成立しているか
- weekly_meal_planner が主導線として十分か
- daily_meal_detail が即時調整導線になっているか
- monthly_meal_planner が大枠計画導線になっているか
- user_menu_editor と user_menu_publish_status が分離されているか
- notification_settings が user 単位方針に合っているか

## 3. copy_check
- 家庭向けでわかりやすいか
- 医療判断を想起させないか
- 有料訴求が強すぎないか
- private / 公開準備中 / 審査中 / 公開済み / 却下 の表現が揃っているか

## 4. csv_check
- free / paid とも CSV 出力できるか
- standard columns が固定されているか
- optional columns の paid 差が明確か
- UTF-8 / 1食1行 が固定されているか

## 5. component_check
- 主要 component 分解が済んでいるか
- props / event payload が固定されているか
- gating-sensitive components が整理されているか

## 6. acceptance_statement
このチェックを通れば、interface 設計は実装前として十分に固まっているとみなす。
