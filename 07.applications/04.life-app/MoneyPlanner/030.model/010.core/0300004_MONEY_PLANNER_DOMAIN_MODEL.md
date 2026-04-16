# ============================================================
# MONEY PLANNER DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - financial_plan
  - income_item
  - expense_item
  - asset_item
  - liability_item
  - purpose_fund
  - event_cost_plan
  - review_record
  - financial_note
  - attached_document
  - family_share_record

schema_policy:
  primary_schema: life
  rules:
    - MoneyPlanner の業務データは life スキーマに保持する
    - 資金計画データを他スキーマの正本として扱わない
    - 外部連携があっても正本境界は life を維持する

model_rules:
  - financial_plan が中心で、収入/支出・資産/負債・目的別資金がぶら下がる
  - 将来イベント費用は event_cost_plan で扱う
  - 家族共有は正本移譲ではなく共有ビューとして扱う
