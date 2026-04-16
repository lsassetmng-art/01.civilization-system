# MealPlanner Notification Settings Logical Shape

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
notification settings API に対応する論理保存形を固定する。

## 2. core_policy
- 通知設定の正本は user 単位
- household_id は文脈保持に使う
- shared_notice は paid のみ
- 医療系注意喚起は扱わない
- まずは 1 user + 1 household ごとに 1設定とする

## 3. logical_table
- table_name:
  - notification_preference

## 4. columns

### primary_columns
- notification_preference_id:
  - PK
- user_id:
  - required
  - non_null
- household_id:
  - required
  - non_null

### daily
- daily_plan_notice_enabled:
  - required
  - non_null
- daily_plan_notice_time:
  - optional
  - nullable

### weekly
- weekly_plan_notice_enabled:
  - required
  - non_null
- weekly_plan_notice_day:
  - optional
  - nullable
- weekly_plan_notice_time:
  - optional
  - nullable

### monthly
- monthly_plan_notice_enabled:
  - required
  - non_null
- monthly_plan_notice_day:
  - optional
  - nullable
- monthly_plan_notice_time:
  - optional
  - nullable

### shopping
- shopping_notice_enabled:
  - required
  - non_null
- shopping_notice_time:
  - optional
  - nullable

### expiry
- expiry_notice_enabled:
  - required
  - non_null
- expiry_notice_days_before:
  - optional
  - nullable

### shared
- shared_notice_enabled:
  - required
  - non_null

### audit
- created_at:
  - server_managed
  - non_null
- updated_at:
  - server_managed
  - non_null

## 5. uniqueness
- UQ user_id, household_id

## 6. logical_rules
- daily_plan_notice_enabled=false のとき:
  - daily_plan_notice_time は null 可
- weekly_plan_notice_enabled=false のとき:
  - weekly_plan_notice_day / weekly_plan_notice_time は null 可
- monthly_plan_notice_enabled=false のとき:
  - monthly_plan_notice_day / monthly_plan_notice_time は null 可
- shopping_notice_enabled=false のとき:
  - shopping_notice_time は null 可
- expiry_notice_enabled=false のとき:
  - expiry_notice_days_before は null 可
- free:
  - shared_notice_enabled=false 固定
- paid:
  - shared_notice_enabled=true/false 可

## 7. enum_like_values
- weekly_plan_notice_day:
  - sunday
  - monday
  - tuesday
  - wednesday
  - thursday
  - friday
  - saturday

## 8. validation_notes
- daily_plan_notice_time:
  - HH:MM
- weekly_plan_notice_time:
  - HH:MM
- monthly_plan_notice_time:
  - HH:MM
- shopping_notice_time:
  - HH:MM
- monthly_plan_notice_day:
  - 1-28
- expiry_notice_days_before:
  - 1-30

## 9. free_paid_boundary
- free:
  - shared_notice_enabled は保存時 false に正規化してよい
- paid:
  - shared_notice_enabled を保持できる

## 10. non_goals
- push token 保存
- 端末別通知最適化
- OS permission 詳細
