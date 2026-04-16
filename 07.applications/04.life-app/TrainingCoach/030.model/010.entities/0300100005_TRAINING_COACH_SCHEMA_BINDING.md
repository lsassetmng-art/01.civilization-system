# ============================================================
# TRAINING COACH SCHEMA BINDING
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero

schema_binding:
  primary_schema: life
  schema_role:
    - TrainingCoach のアプリデータは life schema に保存する
    - 本アプリは LifeOS 領域のため、業務系 schema へ置かない
    - 連携は行っても、正本配置先は life を維持する

entity_schema_policy:
  training_plan: life
  training_session: life
  exercise_item: life
  exercise_category: life
  difficulty_rule: life
  completion_log: life
  fatigue_note: life
  training_goal: life
  streak_summary: life
  guide_content: life
  device_sync_state: life

boundary_notes:
  - BodyMetrics 由来の受信値も、TrainingCoach側の利用保存は life schema 前提とする
  - MealPlanner / LifePlanner への共有は integration payload 経由で行う
  - schema 正本は life だが、他アプリ正本値の意味は崩さない

prohibited:
  - Business 系 schema への主保存
  - ERP schema への直接保存
  - app 専用 schema を先に増やして life 正本を崩すこと
