# MealPlanner History Retention Final Policy

## 1. purpose
履歴保持と履歴閲覧の最終方針を固定する。

## 2. core_conclusion
- DB では短期削除しない
- アプリの閲覧範囲で free / paid 差をつける
- free:
  - 直近30日を標準閲覧範囲
- paid:
  - 長期閲覧可

## 3. retention_axes
- storage_retention
- ui_visibility_retention
- csv_export_retention

## 4. storage_retention
- meal_history:
  - DB では保持
- meal_plan_export_job:
  - DB では保持
- shopping history like context:
  - 必要に応じて保持
- short-term hard delete:
  - 原則しない

## 5. ui_visibility_retention

### free
- meal_history visible range:
  - current_date から過去30日
- older data:
  - DB に残っていても通常画面では見せない
- copy:
  - 30日より前の履歴は有料で確認できます

### paid
- meal_history visible range:
  - 長期閲覧可
- copy:
  - 過去の履歴も確認できます

## 6. csv_export_retention_policy

### free
- CSV 出力対象は現在画面で見えている範囲を基本とする
- 履歴依存の補助列は制限する

### paid
- 長期利用文脈を含む CSV を許可する
- optional columns も使える

## 7. boundary_rules
- retention 制限は削除ではなく表示制御
- free -> paid 移行で過去履歴が戻って見える設計を許可する
- paid -> free 戻りでは、DB 削除ではなく再び表示制限に戻す

## 8. non_goals
- free 用の短期物理削除
- 履歴を課金のためだけに破壊的削除すること
