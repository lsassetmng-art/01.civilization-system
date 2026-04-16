# ============================================================
# TRAINING COACH ENTITY FIELD DICTIONARY
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero

field_policy:
  - exact payload 固定用の基礎辞書とする
  - 表示用文言と内部値を分離する
  - null 許容項目は明示する
  - 体調値は医療判断用途に使わない

entities:

training_plan:
  primary_key: plan_id
  fields:
    - name: plan_id
      type: uuid
      required: true
      description: プラン識別子
    - name: owner_user_id
      type: string
      required: true
      description: 所有ユーザー識別子
    - name: plan_name
      type: string
      required: true
      description: プラン名
    - name: goal_type
      type: enum
      required: true
      allowed:
        - weight_loss
        - strength_up
        - flexibility_up
        - stamina_up
        - health_maintenance
        - custom
    - name: schedule_type
      type: enum
      required: true
      allowed:
        - daily
        - weekly
    - name: default_duration_minutes
      type: integer
      required: true
      description: 既定の所要時間
    - name: rest_day_rules
      type: array<object>
      required: true
      description: 休息日ルール
    - name: difficulty_level
      type: enum
      required: true
      allowed:
        - beginner
        - easy
        - normal
        - hard
    - name: status
      type: enum
      required: true
      allowed:
        - active
        - paused
        - archived
    - name: created_at
      type: timestamp
      required: true
    - name: updated_at
      type: timestamp
      required: true

training_session:
  primary_key: session_id
  fields:
    - name: session_id
      type: uuid
      required: true
    - name: plan_id
      type: uuid
      required: true
    - name: scheduled_date
      type: date
      required: true
    - name: started_at
      type: timestamp
      required: false
    - name: completed_at
      type: timestamp
      required: false
    - name: execution_status
      type: enum
      required: true
      allowed:
        - scheduled
        - in_progress
        - completed
        - skipped
        - stopped
    - name: actual_duration_minutes
      type: integer
      required: false
    - name: fatigue_before
      type: integer
      required: false
      range: 1-5
    - name: fatigue_after
      type: integer
      required: false
      range: 1-5
    - name: note
      type: string
      required: false

exercise_item:
  primary_key: exercise_item_id
  fields:
    - name: exercise_item_id
      type: uuid
      required: true
    - name: category_code
      type: enum
      required: true
      allowed:
        - yoga
        - stretch
        - cardio
        - strength
        - equipment
        - daily_activity
    - name: exercise_name
      type: string
      required: true
    - name: guidance_level
      type: enum
      required: true
      allowed:
        - minimal
        - standard
        - detailed
    - name: default_reps
      type: integer
      required: false
    - name: default_sets
      type: integer
      required: false
    - name: default_seconds
      type: integer
      required: false
    - name: safety_notice_code_list
      type: array<string>
      required: true

completion_log:
  primary_key: completion_log_id
  fields:
    - name: completion_log_id
      type: uuid
      required: true
    - name: session_id
      type: uuid
      required: true
    - name: completion_result
      type: enum
      required: true
      allowed:
        - completed
        - partial
        - skipped
        - stopped
    - name: achievement_rate
      type: integer
      required: true
      range: 0-100
    - name: earned_streak_increment
      type: boolean
      required: true

fatigue_note:
  primary_key: fatigue_note_id
  fields:
    - name: fatigue_note_id
      type: uuid
      required: true
    - name: record_date
      type: date
      required: true
    - name: fatigue_level
      type: integer
      required: true
      range: 1-5
    - name: body_condition
      type: enum
      required: true
      allowed:
        - very_good
        - good
        - normal
        - tired
        - bad
    - name: memo
      type: string
      required: false

device_sync_state:
  primary_key: sync_state_id
  fields:
    - name: sync_state_id
      type: uuid
      required: true
    - name: source_system
      type: enum
      required: true
      allowed:
        - bodymetrics
        - wearable
        - manual
    - name: sync_status
      type: enum
      required: true
      allowed:
        - connected
        - disconnected
        - delayed
        - error
    - name: last_synced_at
      type: timestamp
      required: false
