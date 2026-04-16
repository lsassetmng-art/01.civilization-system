# ============================================================
# TRAINING COACH NULLABILITY AND DEFAULT POLICY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

nullability_policy:
  - 業務上必須の識別子、状態、所有者、時点は not null を基本とする
  - 実施前には未確定な started_at / completed_at / fatigue_after は null 許容とする
  - optional note / memo / media_url は null 許容とする
  - derived summary は再計算可能でも高速表示目的で保持を許容する

default_policy:
  - uuid primary key は gen_random_uuid() を基本候補とする
  - created_at は now() を基本候補とする
  - updated_at は now() 初期値を持ち、更新時再設定前提とする
  - is_active は true 初期値を基本候補とする
  - version_no は 1 初期値を基本候補とする

table_rules:
  life.training_plan:
    not_null:
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
    nullable:
      - deleted_at

  life.training_session:
    not_null:
      - training_session_id
      - training_plan_id
      - owner_user_id
      - scheduled_date
      - execution_status
      - created_at
      - updated_at
    nullable:
      - started_at
      - completed_at
      - actual_duration_minutes
      - fatigue_before
      - fatigue_after
      - note

  life.completion_log:
    not_null:
      - completion_log_id
      - training_session_id
      - completion_result
      - achievement_rate
      - earned_streak_increment
      - finalized_at
      - created_at

  life.fatigue_note:
    not_null:
      - fatigue_note_id
      - owner_user_id
      - record_date
      - fatigue_level
      - body_condition
      - created_at
      - updated_at
    nullable:
      - memo
      - locked_at

notes:
  - enum 系は text + check constraint 草案を基本とする
  - exact nullability final review は DDL 適用前に再確認する
