# ============================================================
# LIFE PLANNER DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - life_plan
  - life_goal
  - life_event
  - milestone
  - review_record
  - life_plan_note
  - attached_document
  - linked_app_reference
  - family_share_record

schema_policy:
  primary_schema: life
  rules:
    - LifePlanner の業務データは life スキーマに保持する
    - 人生設計データを他スキーマの正本として扱わない
    - 外部連携があっても正本境界は life を維持する

model_rules:
  - life_plan が中心で、目標・イベント・見直し記録がぶら下がる
  - 専門情報は linked_app_reference で各アプリ正本へつなぐ
  - 家族共有は正本移譲ではなく共有ビューとして扱う
