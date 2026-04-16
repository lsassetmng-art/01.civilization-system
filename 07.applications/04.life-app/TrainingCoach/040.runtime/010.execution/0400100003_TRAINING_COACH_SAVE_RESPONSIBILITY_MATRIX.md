# ============================================================
# TRAINING COACH SAVE RESPONSIBILITY MATRIX
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 040.runtime
owner: Boss
prepared_by: Zero

save_responsibility_policy:
  - 正本更新責務と参照責務を分ける
  - 受信キャッシュと正本データを混同しない
  - derived summary は再計算可能前提で扱う

matrix:

training_plan:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: owner_write

training_plan_item:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: owner_write

training_session:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: system_and_owner_action

completion_log:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: system_finalize_only

fatigue_note:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: owner_write_limited

training_goal:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: owner_write

streak_summary:
  source_of_truth: TrainingCoach_derived
  schema: life
  persistence: persistent_cache_or_summary
  update_mode: system_recompute

guide_content:
  source_of_truth: TrainingCoach_content
  schema: life
  persistence: persistent
  update_mode: curated_update

device_sync_state:
  source_of_truth: TrainingCoach
  schema: life
  persistence: persistent
  update_mode: system_update

bodymetrics_daily_summary_cache:
  source_of_truth: BodyMetrics_upstream
  local_role: read_cache_only
  schema: life
  persistence: cached_copy
  update_mode: inbound_replace_or_append_by_policy

responsibility_notes:
  - MealPlanner / LifePlanner 向け outbound payload は TrainingCoach 側で生成する
  - BodyMetrics raw ownership は BodyMetrics 側に残す
