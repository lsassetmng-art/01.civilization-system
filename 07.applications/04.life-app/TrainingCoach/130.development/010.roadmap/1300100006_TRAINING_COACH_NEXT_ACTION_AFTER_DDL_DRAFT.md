# ============================================================
# TRAINING COACH NEXT ACTION AFTER DDL DRAFT
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 130.development
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

current_position:
  - life schema fixed
  - physical table mapping fixed
  - DDL draft generated

next_recommended_actions:
  - DDL draft review by 佐藤
  - nullable / unique / FK final adjustments
  - apply-ready SQL への変換
  - request / response exact payload と DB column の exact mapping 固定
  - seed master policy for exercise_category / exercise_item / guide_content 固定

decision_hint:
  - 次の最短ルートは apply-ready SQL 化
  - 設計をさらに固めるなら seed policy を先に固定する
