# ============================================================
# MONEY PLANNER CROSS DOMAIN ENUM CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 030.model
subdomain: domain-model

purpose:
  - 画面/API/DB logical 設計で使う enum を横断統合する
  - 同義語やブレを防ぐ
  - 後続の SQL / implementation の土台にする

enum_catalog:

  frequency:
    values:
      - daily
      - weekly
      - monthly
      - yearly
      - one_time

  necessity_level:
    values:
      - essential
      - normal
      - optional

  asset_type:
    values:
      - cash
      - bank_deposit
      - securities
      - insurance
      - real_estate
      - other

  liability_type:
    values:
      - mortgage
      - loan
      - credit_card
      - other

  valuation_basis:
    values:
      - input_manual
      - latest_known
      - estimate

  liquidity_level:
    values:
      - high
      - medium
      - low

  ownership_scope:
    values:
      - individual
      - couple
      - family

  visibility_scope:
    values:
      - private
      - shared
      - selected_only

  member_visibility_scope:
    values:
      - all
      - shared_only
      - selected_only

  saving_goal_status:
    values:
      - active
      - paused
      - completed
      - archived

  event_priority:
    values:
      - high
      - medium
      - low

  scenario_type:
    values:
      - default
      - saving
      - expense_increase
      - income_decrease
      - event_forward

  shared_member_role:
    values:
      - owner
      - partner_editor
      - viewer

  shared_member_status:
    values:
      - pending
      - active
      - removed

  memo_type:
    values:
      - general
      - insurance
      - pension
      - tax_estimate
      - handover

  import_source_system:
    values:
      - manual
      - life_planner
      - end_of_life_planner
      - inheritance_support

  import_status:
    values:
      - received
      - draft_candidate
      - reviewed
      - confirmed
      - rejected
      - archived

  candidate_type:
    values:
      - event_budget
      - saving_goal
      - memo
      - asset
      - liability

  dashboard_summary_scope:
    values:
      - owner
      - shared

  alert_type:
    values:
      - shortage_risk
      - duplicate_candidate
      - review_pending
      - goal_delay
      - sharing_visibility_warning

  alert_severity:
    values:
      - high
      - medium
      - low

  linkage_target_system:
    values:
      - life_planner
      - end_of_life_planner
      - inheritance_support

  linkage_share_scope:
    values:
      - none
      - financial_plan_summary
      - asset_liability_summary
      - asset_summary
      - inheritance_financial_candidate
      - end_of_life_cost_candidate
      - life_event_financial_candidate

enum_rules:
  - 表記は snake_case で統一
  - API / screen / db logical で同じ意味の enum は同じ値を使う
  - 画面表示文言は翻訳層で別管理する
