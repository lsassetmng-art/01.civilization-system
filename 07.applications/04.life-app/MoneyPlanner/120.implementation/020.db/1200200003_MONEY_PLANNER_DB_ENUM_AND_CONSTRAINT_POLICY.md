# ============================================================
# MONEY PLANNER DB ENUM AND CONSTRAINT POLICY
# 佐藤（DB担当）レビュー前提
# ============================================================

status: canonical-draft
system: MoneyPlanner

enum_candidates:
  frequency:
    - daily
    - weekly
    - monthly
    - yearly
    - one_time

  necessity_level:
    - essential
    - normal
    - optional

  asset_type:
    - cash
    - bank_deposit
    - securities
    - insurance
    - real_estate
    - other

  liability_type:
    - mortgage
    - loan
    - credit_card
    - other

  valuation_basis:
    - input_manual
    - latest_known
    - estimate

  liquidity_level:
    - high
    - medium
    - low

  ownership_scope:
    - individual
    - couple
    - family

  visibility_scope:
    - private
    - shared

  saving_goal_status:
    - active
    - paused
    - completed
    - archived

  event_priority:
    - high
    - medium
    - low

  scenario_type:
    - default
    - saving
    - expense_increase
    - income_decrease
    - event_forward

  shared_role:
    - owner
    - partner_editor
    - viewer

  member_status:
    - pending
    - active
    - removed

  memo_type:
    - general
    - insurance
    - pension
    - tax_estimate
    - handover

constraint_candidates:
  - amount >= 0
  - balance_amount >= 0
  - target_amount > 0
  - current_saved_amount >= 0
  - monthly_target_amount is null or monthly_target_amount >= 0
  - monthly_payment is null or monthly_payment >= 0
  - base_currency length = 3
  - currency_code length = 3
  - target_date is null or target_date >= start_date
  - deleted_at is null or deleted_at >= created_at

uniqueness_candidates:
  - mp_shared_member(plan_id, user_ref) unique where deleted_at is null
  - mp_scenario(plan_id, name) unique where deleted_at is null and active_flag in (true,false)

notes:
  - enum 実装は check constraint or reference master のいずれかで固定
  - 実SQL化前に佐藤レビューを前提とする
