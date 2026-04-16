# ============================================================
# MONEY PLANNER INTERFACE SPEC
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - financial_plan_list
  - financial_plan_detail
  - income_expense_view
  - asset_liability_view
  - purpose_fund_view
  - event_cost_timeline
  - review_center
  - family_share_view
  - settings

ui_rules:
  - 計画中心ナビゲーション
  - 将来見通しと現在値を両方見せる
  - 重要度は色ではなくラベルでも表現
  - 専門判断代替ではない表示を必要箇所に持つ
