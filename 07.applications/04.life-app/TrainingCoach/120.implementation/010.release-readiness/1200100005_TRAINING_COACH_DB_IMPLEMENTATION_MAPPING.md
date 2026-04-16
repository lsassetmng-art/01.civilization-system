# ============================================================
# TRAINING COACH DB IMPLEMENTATION MAPPING
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 120.implementation
owner: Boss
prepared_by: Zero

db_mapping_goal:
  - 設計書から physical implementation へ落とすための橋渡しを行う
  - SQL着手前に table / key / index / responsibility を固定する

implementation_units:
  unit_1_core_master:
    - life.exercise_category
    - life.exercise_item
    - life.exercise_item_safety_notice
    - life.guide_content

  unit_2_planing_and_goal:
    - life.training_plan
    - life.training_plan_rest_rule
    - life.training_plan_item
    - life.training_goal

  unit_3_execution_and_summary:
    - life.training_session
    - life.completion_log
    - life.fatigue_note
    - life.streak_summary

  unit_4_integration_state:
    - life.device_sync_state
    - life.bodymetrics_daily_summary_cache

sql_design_preconditions:
  - schema は life 固定
  - primary key naming は table名由来の singular_id を優先
  - created_at / updated_at の採用基準を揃える
  - finalized record の update 制約を表現する
  - soft delete 対象と non-delete 対象を切り分ける

before_sql_checklist:
  - [x] logical entity fixed
  - [x] schema fixed to life
  - [x] table mapping fixed
  - [x] relation fixed
  - [x] index strategy fixed
  - [x] save responsibility fixed
  - [ ] exact column nullability final check
  - [ ] audit persistence detailed design
  - [ ] correction event persistence design
