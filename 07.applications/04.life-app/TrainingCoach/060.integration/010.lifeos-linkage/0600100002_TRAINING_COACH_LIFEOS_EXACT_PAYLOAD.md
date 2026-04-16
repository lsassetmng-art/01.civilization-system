# ============================================================
# TRAINING COACH LIFEOS EXACT PAYLOAD
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

integration_policy:
  - まず意味固定を優先し、実装方式は後段とする
  - TrainingCoach は医療診断値を要求しない
  - LifeOS他アプリへ渡す値は最小化する

inbound_from_bodymetrics:
  payload_name: bodymetrics_trainingcoach_daily_summary
  direction: inbound
  description:
    - トレーニング支援に必要な日次概要のみを受信する
  fields:
    user_id: string
    target_date: yyyy-mm-dd
    weight_kg: number|null
    steps_count: integer|null
    sleep_duration_minutes: integer|null
    heart_rate_trend: low|normal|high|null
    readiness_hint: low|normal|high|null
    synced_at: timestamp

outbound_to_mealplanner:
  payload_name: trainingcoach_mealplanner_activity_summary
  direction: outbound
  description:
    - 食事計画で参照するための活動量概要のみ共有する
  fields:
    user_id: string
    target_date: yyyy-mm-dd
    activity_level: low|normal|high
    completed_training_minutes: integer
    planned_training_minutes: integer
    estimated_burn_level: low|normal|high

outbound_to_lifeplanner:
  payload_name: trainingcoach_lifeplanner_goal_progress
  direction: outbound
  description:
    - 健康目標進捗のみ共有する
  fields:
    user_id: string
    target_date: yyyy-mm-dd
    active_goal_count: integer
    weekly_completion_rate: integer
    streak_days: integer
    status_badge: on_track|needs_attention|rest_mode

future_optional_inbound_from_wearable:
  payload_name: wearable_trainingcoach_session_hint
  direction: inbound
  description:
    - 将来拡張。セッション直前の簡易状態ヒント
  fields:
    user_id: string
    target_timestamp: timestamp
    heart_rate_trend: low|normal|high|null
    fatigue_hint: low|normal|high|null
