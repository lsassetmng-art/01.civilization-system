# ============================================================
# TRAINING COACH API DB EXACT MAPPING
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - screen payload と life schema table / column の exact 対応を固定する
  - 実装時の曖昧変換を防ぐ
  - request / response / persistence の責務を分離する

screen_to_db_mapping:

dashboard:
  request_inputs:
    user_id:
      source: request.payload.user_id
      db_usage:
        - life.training_session.owner_user_id
        - life.streak_summary.owner_user_id
        - life.fatigue_note.owner_user_id
        - life.device_sync_state.owner_user_id
    target_date:
      source: request.payload.target_date
      db_usage:
        - life.training_session.scheduled_date
        - life.fatigue_note.record_date
        - life.bodymetrics_daily_summary_cache.target_date
  response_outputs:
    today_total_minutes:
      derived_from:
        - life.training_session.scheduled_date = target_date
        - life.training_plan.default_duration_minutes
    today_completed_minutes:
      derived_from:
        - life.training_session.actual_duration_minutes
        - life.training_session.execution_status = completed
    streak_days:
      source:
        - life.streak_summary.current_streak_days
    active_goal_count:
      source:
        - life.training_goal.status = active
    premium_status:
      source:
        - app entitlement layer
    condition_snapshot.body_condition:
      source_priority:
        - life.fatigue_note.body_condition
        - life.bodymetrics_daily_summary_cache.readiness_hint derived fallback
    condition_snapshot.fatigue_level:
      source:
        - life.fatigue_note.fatigue_level
    condition_snapshot.device_sync_status:
      source:
        - life.device_sync_state.sync_status

today_plan:
  request_inputs:
    user_id:
      db_usage:
        - life.training_session.owner_user_id
    target_date:
      db_usage:
        - life.training_session.scheduled_date
  response_outputs:
    sessions[].session_id:
      source:
        - life.training_session.training_session_id
    sessions[].plan_id:
      source:
        - life.training_session.training_plan_id
    sessions[].plan_name:
      source:
        - life.training_plan.plan_name
    sessions[].items[]:
      source_chain:
        - life.training_plan_item
        - life.exercise_item
    sessions[].scheduled_duration_minutes:
      source:
        - life.training_plan.default_duration_minutes
    sessions[].recommendation_badge:
      derived_from:
        - life.fatigue_note
        - life.bodymetrics_daily_summary_cache
        - life.difficulty_rule

plan_editor_save:
  request_to_db:
    plan_id -> life.training_plan.training_plan_id
    plan_name -> life.training_plan.plan_name
    goal_type -> life.training_plan.goal_type
    schedule_type -> life.training_plan.schedule_type
    default_duration_minutes -> life.training_plan.default_duration_minutes
    difficulty_level -> life.training_plan.difficulty_level
    rest_day_rules[].weekday_code -> life.training_plan_rest_rule.weekday_code
    items[].exercise_item_id -> life.training_plan_item.exercise_item_id
    items[].order_no -> life.training_plan_item.order_no
    items[].reps -> life.training_plan_item.reps
    items[].sets -> life.training_plan_item.sets
    items[].seconds -> life.training_plan_item.seconds
  response_from_db:
    saved_plan_id <- life.training_plan.training_plan_id
    updated_at <- life.training_plan.updated_at

session_start:
  request_to_db:
    session_id -> life.training_session.training_session_id
    started_at -> life.training_session.started_at
    execution_status -> life.training_session.execution_status = in_progress
  response_from_db:
    session_id <- life.training_session.training_session_id
    execution_status <- life.training_session.execution_status

session_complete:
  request_to_db:
    session_id -> life.training_session.training_session_id
    completed_at -> life.training_session.completed_at
    actual_duration_minutes -> life.training_session.actual_duration_minutes
    fatigue_after -> life.training_session.fatigue_after
    note -> life.training_session.note
    completion_result -> life.completion_log.completion_result
  derived_persistence:
    achievement_rate -> life.completion_log.achievement_rate
    earned_streak_increment -> life.completion_log.earned_streak_increment
    finalized_at -> life.completion_log.finalized_at
    streak_recompute -> life.streak_summary.*
  response_from_db:
    completion_log_id <- life.completion_log.completion_log_id
    achievement_rate <- life.completion_log.achievement_rate
    earned_streak_increment <- life.completion_log.earned_streak_increment

guide_viewer:
  request_inputs:
    exercise_item_id:
      db_usage:
        - life.guide_content.exercise_item_id
    locale:
      db_usage:
        - life.guide_content.locale
  response_outputs:
    title:
      source:
        - life.guide_content.title_key
    body_text:
      source:
        - life.guide_content.body_text_key
    media_type:
      source:
        - life.guide_content.media_type
    media_url:
      source:
        - life.guide_content.media_url
    safety_notice_list:
      source_chain:
        - life.exercise_item_safety_notice.safety_notice_code
        - policy message catalog

integration_mapping:

inbound_bodymetrics_trainingcoach_daily_summary:
  payload_to_db:
    user_id -> life.bodymetrics_daily_summary_cache.owner_user_id
    target_date -> life.bodymetrics_daily_summary_cache.target_date
    weight_kg -> life.bodymetrics_daily_summary_cache.weight_kg
    steps_count -> life.bodymetrics_daily_summary_cache.steps_count
    sleep_duration_minutes -> life.bodymetrics_daily_summary_cache.sleep_duration_minutes
    heart_rate_trend -> life.bodymetrics_daily_summary_cache.heart_rate_trend
    readiness_hint -> life.bodymetrics_daily_summary_cache.readiness_hint
    synced_at -> life.bodymetrics_daily_summary_cache.source_synced_at

outbound_trainingcoach_mealplanner_activity_summary:
  db_to_payload:
    user_id <- life.training_session.owner_user_id
    target_date <- life.training_session.scheduled_date
    completed_training_minutes <- life.training_session.actual_duration_minutes aggregation
    planned_training_minutes <- life.training_plan.default_duration_minutes aggregation
    activity_level <- derived classification
    estimated_burn_level <- derived classification

outbound_trainingcoach_lifeplanner_goal_progress:
  db_to_payload:
    user_id <- owner dimension
    target_date <- request or scheduler context
    active_goal_count <- life.training_goal active count
    weekly_completion_rate <- life.streak_summary.weekly_completion_rate
    streak_days <- life.streak_summary.current_streak_days
    status_badge <- derived classification
