# ============================================================
# TRAINING COACH ANALYTICS AND KPI DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
  - v1 で見るべき KPI と分析イベントを固定する
  - 継続率と安全性の両面を観測できるようにする
  - 個人データ過収集を避ける

analytics_policy:
  - 健康の生値を分析目的で過剰収集しない
  - イベントは product improvement に必要最小限とする
  - 個人の体調悪化を断定評価しない
  - safety 関連の発火頻度は匿名集計前提で把握する

product_kpis:
  acquisition:
    - onboarding_start_rate
    - onboarding_completion_rate
  activation:
    - first_plan_save_rate
    - first_session_start_rate
    - first_session_complete_rate
  continuity:
    - day_3_retention
    - day_7_retention
    - weekly_active_users
    - average_current_streak_days
  value:
    - weekly_completion_rate_avg
    - premium_conversion_rate
    - guide_view_usage_rate
  safety:
    - rest_recommended_trigger_rate
    - unsafe_condition_stop_rate
    - excessive_notification_suppression_rate

event_inventory:
  - event_name: tc_onboarding_started
    minimal_properties:
      - correlation_id
      - locale
  - event_name: tc_onboarding_completed
    minimal_properties:
      - goal_type
      - difficulty_level
      - preferred_duration_bucket
  - event_name: tc_plan_saved
    minimal_properties:
      - plan_id
      - item_count
      - difficulty_level
  - event_name: tc_session_started
    minimal_properties:
      - session_id
      - plan_id
      - category_mix_summary
  - event_name: tc_session_completed
    minimal_properties:
      - session_id
      - completion_result
      - actual_duration_bucket
      - achievement_rate_bucket
  - event_name: tc_guide_viewed
    minimal_properties:
      - exercise_item_id
      - locale
      - media_type
  - event_name: tc_notification_opened
    minimal_properties:
      - notification_code
  - event_name: tc_rest_recommended_triggered
    minimal_properties:
      - reason_type
  - event_name: tc_premium_upgrade_viewed
    minimal_properties:
      - source_screen
  - event_name: tc_premium_conversion_completed
    minimal_properties:
      - plan_code
      - currency_code

bucket_policy:
  - exact health raw values は event property に直接載せない
  - duration は bucket 化候補
  - achievement_rate も bucket 化候補

review_questions:
  - このイベントは product 改善に本当に必要か
  - 生の health detail を集めすぎていないか
  - KPI から安全性を見落とさないか
