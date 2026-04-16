# Notification Settings API Exact

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
MealPlanner の通知設定 API を exact に固定する。

## 2. policy_summary
- 通知設定は household 単位ではなく、まず user 単位を正とする
- 共有通知は paid のみ
- 医療的注意喚起は扱わない
- 強すぎる通知は避ける

## 3. endpoint_list
- GET /api/mealplanner/notification/settings
- POST /api/mealplanner/notification/settings/update

## 4. GET /api/mealplanner/notification/settings

### request_query
- user_id: required
- household_id: required

### response
{
  "success": true,
  "data": {
    "user_id": "user_001",
    "household_id": "household_001",
    "plan_code": "paid",
    "settings": {
      "daily_plan_notice_enabled": true,
      "daily_plan_notice_time": "19:00",
      "weekly_plan_notice_enabled": true,
      "weekly_plan_notice_day": "sunday",
      "weekly_plan_notice_time": "18:00",
      "monthly_plan_notice_enabled": false,
      "monthly_plan_notice_day": 1,
      "monthly_plan_notice_time": "10:00",
      "shopping_notice_enabled": true,
      "shopping_notice_time": "09:00",
      "expiry_notice_enabled": true,
      "expiry_notice_days_before": 2,
      "shared_notice_enabled": true
    }
  }
}

## 5. POST /api/mealplanner/notification/settings/update

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "settings": {
    "daily_plan_notice_enabled": true,
    "daily_plan_notice_time": "19:00",
    "weekly_plan_notice_enabled": true,
    "weekly_plan_notice_day": "sunday",
    "weekly_plan_notice_time": "18:00",
    "monthly_plan_notice_enabled": false,
    "monthly_plan_notice_day": 1,
    "monthly_plan_notice_time": "10:00",
    "shopping_notice_enabled": true,
    "shopping_notice_time": "09:00",
    "expiry_notice_enabled": true,
    "expiry_notice_days_before": 2,
    "shared_notice_enabled": true
  }
}

### response
{
  "success": true,
  "data": {
    "user_id": "user_001",
    "household_id": "household_001",
    "updated_at": "2026-04-14T12:00:00+09:00"
  }
}

## 6. field_rules
- daily_plan_notice_enabled:
  - required
  - boolean
- daily_plan_notice_time:
  - optional
  - nullable
  - HH:MM
- weekly_plan_notice_enabled:
  - required
- weekly_plan_notice_day:
  - optional
  - nullable
  - sunday / monday / tuesday / wednesday / thursday / friday / saturday
- weekly_plan_notice_time:
  - optional
  - nullable
- monthly_plan_notice_enabled:
  - required
- monthly_plan_notice_day:
  - optional
  - nullable
  - 1-28
- monthly_plan_notice_time:
  - optional
  - nullable
- shopping_notice_enabled:
  - required
- shopping_notice_time:
  - optional
  - nullable
- expiry_notice_enabled:
  - required
- expiry_notice_days_before:
  - optional
  - nullable
  - 1-30
- shared_notice_enabled:
  - required
  - free では false 固定または update 不可

## 7. free_paid_rules
- free:
  - shared_notice_enabled = false
  - shared notice update 不可
- paid:
  - shared_notice_enabled 利用可

## 8. validation_copy
- invalid_time:
  - 時刻を確認してください
- invalid_weekday:
  - 曜日を確認してください
- invalid_month_day:
  - 日付を確認してください
- invalid_expiry_notice_days_before:
  - 期限通知の日数を確認してください
- shared_notice_on_free:
  - 共有通知は有料で利用できます
