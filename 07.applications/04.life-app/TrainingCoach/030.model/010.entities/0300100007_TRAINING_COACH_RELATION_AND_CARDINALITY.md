# ============================================================
# TRAINING COACH RELATION AND CARDINALITY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero

relations:

training_plan:
  has_many:
    - training_plan_rest_rule
    - training_plan_item
    - training_session
  belongs_to:
    - owner_user

training_plan_item:
  belongs_to:
    - training_plan
    - exercise_item

training_session:
  belongs_to:
    - training_plan
  has_one_or_zero:
    - completion_log

exercise_item:
  belongs_to:
    - exercise_category
  has_many:
    - guide_content
    - exercise_item_safety_notice
    - training_plan_item

completion_log:
  belongs_to:
    - training_session

fatigue_note:
  belongs_to:
    - owner_user

training_goal:
  belongs_to:
    - owner_user

streak_summary:
  belongs_to:
    - owner_user

device_sync_state:
  belongs_to:
    - owner_user

bodymetrics_daily_summary_cache:
  belongs_to:
    - owner_user

cardinality_rules:
  - 1 user : many training_plan
  - 1 training_plan : many training_plan_item
  - 1 training_plan : many training_session
  - 1 training_session : 0 or 1 completion_log
  - 1 exercise_category : many exercise_item
  - 1 exercise_item : many guide_content
  - 1 exercise_item : many exercise_item_safety_notice

integrity_rules:
  - deleted training_plan は physical delete ではなく soft delete 候補
  - completion_log が存在する training_session は finalized 扱い
  - guide_content は locale + exercise_item 単位で version 管理候補
