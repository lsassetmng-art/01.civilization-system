# ============================================================
# TRAINING COACH DATA CLASSIFICATION
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 100.security
owner: Boss
prepared_by: Zero

classification_policy:
  - 最小権限
  - 必要最小保存
  - 共有最小化
  - 医療データ扱いに見える値も支援用途に限定

classes:
  public_like_configuration:
    - exercise_category
    - guide_content metadata
    - price display metadata

  user_private_standard:
    - training_plan
    - training_session
    - completion_log
    - training_goal

  user_private_health_related:
    - fatigue_note
    - body_condition summary
    - inbound bodymetrics daily summary

sharing_rules:
  - MealPlanner には活動量概要のみ
  - LifePlanner には目標進捗のみ
  - 元データの全面共有は禁止
