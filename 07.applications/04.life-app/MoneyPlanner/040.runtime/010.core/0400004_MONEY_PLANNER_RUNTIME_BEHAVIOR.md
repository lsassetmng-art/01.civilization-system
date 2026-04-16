# ============================================================
# MONEY PLANNER RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_financial_plan
  - add_income_item
  - add_expense_item
  - add_asset_item
  - add_liability_item
  - add_purpose_fund
  - register_review_cycle
  - generate_plan_summary
  - launch_ai_support
  - trigger_review_notification

runtime_rules:
  - 通知は in_app を基本とする
  - 投資や税務の自動結論は出さない
  - AI は整理支援時のみ動作する
