# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH SCREEN FLOW EXACT PAYLOAD
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 050.flow
owner: Boss
prepared_by: Zero

payload_policy:
  - 画面単位で request / response を固定する
  - 画面責務を超える値は返さない
  - 体調入力は医療診断に使わない
  - date / time は ISO 系表記前提とする

screens:

dashboard:
  request:
    screen_code: dashboard
    payload:
      user_id: string
      target_date: yyyy-mm-dd
  response:
    summary:
      today_total_minutes: integer
      today_completed_minutes: integer
      streak_days: integer
      active_goal_count: integer
      premium_status: free|premium
    today_plan_cards:
      - session_id: uuid
        plan_name: string
        category_code: yoga|stretch|cardio|strength|equipment|daily_activity
        scheduled_duration_minutes: integer
        execution_status: scheduled|in_progress|completed|skipped|stopped
    condition_snapshot:
      body_condition: very_good|good|normal|tired|bad
      fatigue_level: 1-5|null
      device_sync_status: connected|disconnected|delayed|error

today_plan:
  request:
    screen_code: today_plan
    payload:
      user_id: string
      target_date: yyyy-mm-dd
  response:
    target_date: yyyy-mm-dd
    sessions:
      - session_id: uuid
        plan_id: uuid
        plan_name: string
        items:
          - exercise_item_id: uuid
            exercise_name: string
            category_code: yoga|stretch|cardio|strength|equipment|daily_activity
            default_reps: integer|null
            default_sets: integer|null
            default_seconds: integer|null
        scheduled_duration_minutes: integer
        recommendation_badge: normal|light_mode|rest_recommended

plan_editor_save:
  request:
    screen_code: plan_editor_save
    payload:
      plan_id: uuid|null
      plan_name: string
      goal_type: weight_loss|strength_up|flexibility_up|stamina_up|health_maintenance|custom
      schedule_type: daily|weekly
      default_duration_minutes: integer
      difficulty_level: beginner|easy|normal|hard
      rest_day_rules:
        - weekday_code: mon|tue|wed|thu|fri|sat|sun
      items:
        - exercise_item_id: uuid
          order_no: integer
          reps: integer|null
          sets: integer|null
          seconds: integer|null
  response:
    result: success
    saved_plan_id: uuid
    updated_at: timestamp

session_start:
  request:
    screen_code: session_start
    payload:
      session_id: uuid
      started_at: timestamp
  response:
    result: success
    session_id: uuid
    execution_status: in_progress

session_complete:
  request:
    screen_code: session_complete
    payload:
      session_id: uuid
      completed_at: timestamp
      actual_duration_minutes: integer
      fatigue_after: integer|null
      note: string|null
      completion_result: completed|partial|stopped
  response:
    result: success
    completion_log:
      completion_log_id: uuid
      achievement_rate: integer
      earned_streak_increment: boolean
    next_recommendation:
      next_mode: continue_normal|light_mode|rest_day
      message_code: string

guide_viewer:
  request:
    screen_code: guide_viewer
    payload:
      exercise_item_id: uuid
      locale: string
  response:
    guide_content:
      title: string
      body_text: string
      media_type: video|image|text
      media_url: string|null
      safety_notice_list:
        - safety_notice_code: string
          safety_notice_text: string

premium_upgrade:
  request:
    screen_code: premium_upgrade
    payload:
      locale: string
      currency_code: string
  response:
    plans:
      - plan_code: premium
        localized_price_text: string
        feature_list:
          - bodymetrics_linkage
          - adaptive_difficulty
          - guide_media
          - family_share
