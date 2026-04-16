# ============================================================
# MONEY PLANNER USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - plan_intake -> income_expense_input -> asset_liability_input -> purpose_fund_setup -> review_cycle_register
  - event_cost_input -> gap_check -> adjustment_note -> summary_output
  - financial_plan_review -> family_share_judgment -> explicit_summary_share

flow_rules:
  - 最初に financial_plan を作る
  - 次に収入/支出、資産/負債、目的別資金を埋める
  - 見直しや共有は最後に明示操作で行う
