# ============================================================
# MONEY PLANNER SUMMARY DEFINITION CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db

summary_families:

  dashboard_summary:
    used_by:
      - dashboard
    source:
      - life.v_mp_dashboard_composed_summary
    fields:
      - total_income
      - total_expense
      - total_assets
      - total_liabilities
      - net_worth
      - active_goal_count
      - completed_goal_count
      - total_target_amount
      - total_current_saved_amount
      - upcoming_count
      - total_upcoming_amount
      - received_candidate_count
      - duplicate_candidate_count

  monthly_projection_summary:
    used_by:
      - monthly_projection screen
    source_tables:
      - life.mp_income_item
      - life.mp_expense_item
      - life.mp_event_budget
    fields:
      - target_month
      - expected_income
      - expected_expense
      - expected_balance
      - shortage_flag
      - high_priority_event_amount

  yearly_projection_summary:
    used_by:
      - yearly_projection screen
    source_tables:
      - life.mp_income_item
      - life.mp_expense_item
      - life.mp_event_budget
      - life.mp_saving_goal
    fields:
      - target_year
      - expected_income
      - expected_expense
      - expected_balance
      - event_impact_amount
      - goal_target_total
      - shortage_months_count

  list_summary:
    used_by:
      - income_list
      - expense_list
      - asset_list
      - liability_list
      - saving_goal_list
      - event_budget_list
      - memo_list
    fields:
      - total_count
      - active_count
      - duplicate_candidate_count
      - private_count
      - shared_count
      - selected_only_count

  sharing_summary:
    used_by:
      - family_sharing screen
    source:
      - life.mp_shared_member
      - life.v_mp_member_visible_object_summary
    fields:
      - active_member_count
      - pending_member_count
      - viewer_count
      - partner_editor_count
      - visible_object_total_by_member
      - shared_visible_income_count
      - shared_visible_expense_count
      - shared_visible_asset_count
      - shared_visible_liability_count

  receive_candidate_summary:
    used_by:
      - receive_candidate review area
    source:
      - life.v_mp_receive_candidate_summary
    fields:
      - received_count
      - draft_candidate_count
      - reviewed_count
      - confirmed_count
      - rejected_count
      - duplicate_candidate_count
      - latest_received_at

summary_calculation_principles:
  - list summary は deleted_at is null 前提
  - projection summary は active_flag を考慮する
  - dashboard summary は base_currency 表示前提
  - sharing summary は member ごとの可視範囲を考慮する
  - receive candidate summary は archived を通常件数から除外してよい

screen_binding_notes:
  - dashboard は composed summary を優先
  - 家族共有画面は sharing summary を優先
  - 候補レビュー画面は receive candidate summary を優先
