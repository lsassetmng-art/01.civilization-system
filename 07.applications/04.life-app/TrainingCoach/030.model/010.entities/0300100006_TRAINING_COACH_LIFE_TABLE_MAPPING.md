# ============================================================
# TRAINING COACH LIFE TABLE MAPPING
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero

schema_binding:
  primary_schema: life

table_mapping_policy:
  - TrainingCoach の保存先は life schema を正とする
  - 論理 entity と物理 table を 1対1 または責務単位で対応させる
  - 他アプリの正本は直接所有しない
  - integration 連携値は必要最小限の利用保存に限定する

tables:

life.training_plan:
  logical_entity: training_plan
  purpose:
    - 運動プラン正本
  primary_key:
    - training_plan_id
  unique_candidates:
    - owner_user_id + plan_name + deleted_at_null_semantics_candidate
  main_columns:
    - training_plan_id
    - owner_user_id
    - plan_name
    - goal_type
    - schedule_type
    - default_duration_minutes
    - difficulty_level
    - status
    - created_at
    - updated_at
    - deleted_at

life.training_plan_rest_rule:
  logical_entity: training_plan.rest_day_rules
  purpose:
    - プランごとの休息日設定
  primary_key:
    - training_plan_rest_rule_id
  foreign_keys:
    - training_plan_id -> life.training_plan.training_plan_id
  main_columns:
    - training_plan_rest_rule_id
    - training_plan_id
    - weekday_code
    - created_at

life.training_plan_item:
  logical_entity: training_plan.items
  purpose:
    - プラン配下の種目並びと設定
  primary_key:
    - training_plan_item_id
  foreign_keys:
    - training_plan_id -> life.training_plan.training_plan_id
    - exercise_item_id -> life.exercise_item.exercise_item_id
  main_columns:
    - training_plan_item_id
    - training_plan_id
    - exercise_item_id
    - order_no
    - reps
    - sets
    - seconds
    - created_at
    - updated_at

life.training_session:
  logical_entity: training_session
  purpose:
    - 実施単位記録
  primary_key:
    - training_session_id
  foreign_keys:
    - training_plan_id -> life.training_plan.training_plan_id
  main_columns:
    - training_session_id
    - training_plan_id
    - owner_user_id
    - scheduled_date
    - started_at
    - completed_at
    - execution_status
    - actual_duration_minutes
    - fatigue_before
    - fatigue_after
    - note
    - created_at
    - updated_at

life.exercise_category:
  logical_entity: exercise_category
  purpose:
    - 種目分類マスタ
  primary_key:
    - exercise_category_code
  main_columns:
    - exercise_category_code
    - display_name_key
    - sort_order
    - is_active

life.exercise_item:
  logical_entity: exercise_item
  purpose:
    - 種目定義
  primary_key:
    - exercise_item_id
  foreign_keys:
    - exercise_category_code -> life.exercise_category.exercise_category_code
  main_columns:
    - exercise_item_id
    - exercise_category_code
    - exercise_name_key
    - guidance_level
    - default_reps
    - default_sets
    - default_seconds
    - is_active
    - created_at
    - updated_at

life.exercise_item_safety_notice:
  logical_entity: exercise_item.safety_notice_code_list
  purpose:
    - 種目と安全注意コードの紐付け
  primary_key:
    - exercise_item_safety_notice_id
  foreign_keys:
    - exercise_item_id -> life.exercise_item.exercise_item_id
  main_columns:
    - exercise_item_safety_notice_id
    - exercise_item_id
    - safety_notice_code
    - sort_order

life.difficulty_rule:
  logical_entity: difficulty_rule
  purpose:
    - 体調 / 実績に応じた負荷調整ルール
  primary_key:
    - difficulty_rule_id
  main_columns:
    - difficulty_rule_id
    - rule_scope
    - fatigue_level
    - body_condition
    - recommendation_mode
    - difficulty_adjustment_type
    - is_active
    - created_at
    - updated_at

life.completion_log:
  logical_entity: completion_log
  purpose:
    - 完了結果の確定ログ
  primary_key:
    - completion_log_id
  foreign_keys:
    - training_session_id -> life.training_session.training_session_id
  main_columns:
    - completion_log_id
    - training_session_id
    - completion_result
    - achievement_rate
    - earned_streak_increment
    - finalized_at
    - created_at

life.fatigue_note:
  logical_entity: fatigue_note
  purpose:
    - 日次疲労 / 体調メモ
  primary_key:
    - fatigue_note_id
  main_columns:
    - fatigue_note_id
    - owner_user_id
    - record_date
    - fatigue_level
    - body_condition
    - memo
    - created_at
    - updated_at
    - locked_at

life.training_goal:
  logical_entity: training_goal
  purpose:
    - 目標定義
  primary_key:
    - training_goal_id
  main_columns:
    - training_goal_id
    - owner_user_id
    - goal_name
    - goal_type
    - target_value_text
    - start_date
    - target_date
    - status
    - created_at
    - updated_at

life.streak_summary:
  logical_entity: streak_summary
  purpose:
    - 継続集計の高速参照
  primary_key:
    - streak_summary_id
  main_columns:
    - streak_summary_id
    - owner_user_id
    - current_streak_days
    - longest_streak_days
    - last_completed_date
    - weekly_completion_rate
    - updated_at

life.guide_content:
  logical_entity: guide_content
  purpose:
    - ガイド本文 / メディア定義
  primary_key:
    - guide_content_id
  foreign_keys:
    - exercise_item_id -> life.exercise_item.exercise_item_id
  main_columns:
    - guide_content_id
    - exercise_item_id
    - locale
    - title_key
    - body_text_key
    - media_type
    - media_url
    - version_no
    - is_active
    - created_at
    - updated_at

life.device_sync_state:
  logical_entity: device_sync_state
  purpose:
    - 連携状態管理
  primary_key:
    - device_sync_state_id
  main_columns:
    - device_sync_state_id
    - owner_user_id
    - source_system
    - sync_status
    - last_synced_at
    - last_error_code
    - updated_at

life.bodymetrics_daily_summary_cache:
  logical_entity: inbound_from_bodymetrics
  purpose:
    - BodyMetrics日次概要の利用保存
  primary_key:
    - bodymetrics_daily_summary_cache_id
  main_columns:
    - bodymetrics_daily_summary_cache_id
    - owner_user_id
    - target_date
    - weight_kg
    - steps_count
    - sleep_duration_minutes
    - heart_rate_trend
    - readiness_hint
    - source_synced_at
    - received_at

notes:
  - cache table は受信元正本を奪わない
  - guide_content は将来 common component 化候補
