# ============================================================
# TRAINING COACH SEED AND MASTER POLICY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - TrainingCoach の初期投入対象データを固定する
  - seed 対象と user-generated data を分離する
  - 共通化候補とアプリ固有データの境界を明確にする

seed_policy:
  - 初期リリースに必要な最小マスタのみ seed 対象とする
  - 変動が多いガイド本文は curated update 前提とする
  - user-generated data は seed しない
  - locale ごとの seed はキー中心で保持する

seed_required_tables:
  - life.exercise_category
  - life.exercise_item
  - life.exercise_item_safety_notice
  - life.difficulty_rule
  - life.guide_content

user_generated_tables:
  - life.training_plan
  - life.training_plan_rest_rule
  - life.training_plan_item
  - life.training_session
  - life.completion_log
  - life.fatigue_note
  - life.training_goal
  - life.streak_summary
  - life.device_sync_state
  - life.bodymetrics_daily_summary_cache
  - life.training_audit_event
  - life.training_correction_event

initial_seed_scope:
  exercise_category:
    target_rows:
      - yoga
      - stretch
      - cardio
      - strength
      - equipment
      - daily_activity
  exercise_item_minimum_examples:
    yoga:
      - morning_breath
      - easy_sun_flow
    stretch:
      - neck_stretch
      - shoulder_stretch
      - hamstring_stretch
    cardio:
      - walk_indoor
      - light_step
    strength:
      - squat_basic
      - wall_push
    equipment:
      - band_row_basic
    daily_activity:
      - short_mobility_break
  safety_notice_code_examples:
    - TC_SAFE_001
    - TC_SAFE_002
    - TC_SAFE_003
    - TC_SAFE_004

difficulty_rule_initial_scope:
  - fatigue_level 4-5 では light_mode_recommended
  - body_condition bad では rest_recommended
  - readiness_hint high のときのみ normal 維持候補
  - aggressive upshift は初期 seed に入れない

guide_content_policy:
  - locale は ja-JP を最初の正本とする
  - 他 locale は fallback 前提で段階投入する
  - media_url は null 許容で、text guidance のみでも初期成立させる

governance:
  - seed 変更は設計レビュー対象
  - exercise_item 追加は category 整合確認必須
  - safety_notice なしの exercise_item は初期許容しない
