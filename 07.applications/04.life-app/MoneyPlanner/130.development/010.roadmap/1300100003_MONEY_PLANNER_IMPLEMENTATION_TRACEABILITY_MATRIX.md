# ============================================================
# MONEY PLANNER IMPLEMENTATION TRACEABILITY MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 130.development
subdomain: roadmap

purpose:
  - screen / api / data / validation / permission の対応を一望化する

matrix:

  dashboard:
    screen_id: MP-001
    api:
      - GET /v1/money-planner/dashboard
      - GET /v1/money-planner/alerts
    logical_views:
      - life.v_mp_dashboard_composed_summary
      - life.v_mp_receive_candidate_summary
      - life.v_mp_shared_balance_summary
    validation:
      - base_currency
      - target_month
      - target_year
      - summary_scope
    permission:
      - owner
      - partner_editor(limited)
      - viewer(shared only)

  income_list:
    screen_id: MP-002
    api:
      - GET /v1/money-planner/incomes
      - POST /v1/money-planner/incomes
      - PATCH /v1/money-planner/incomes/{income_id}
      - DELETE /v1/money-planner/incomes/{income_id}
    logical_tables:
      - life.mp_income_item
    validation:
      - title
      - category
      - amount
      - currency_code
      - frequency
      - date_range
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  expense_list:
    screen_id: MP-003
    api:
      - GET /v1/money-planner/expenses
      - POST /v1/money-planner/expenses
      - PATCH /v1/money-planner/expenses/{expense_id}
      - DELETE /v1/money-planner/expenses/{expense_id}
    logical_tables:
      - life.mp_expense_item
    validation:
      - title
      - category
      - amount
      - currency_code
      - necessity_level
      - frequency
      - date_range
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  asset_list:
    screen_id: MP-004
    api:
      - GET /v1/money-planner/assets
      - POST /v1/money-planner/assets
      - PATCH /v1/money-planner/assets/{asset_id}
      - DELETE /v1/money-planner/assets/{asset_id}
    logical_tables:
      - life.mp_asset_item
    validation:
      - asset_type
      - amount
      - currency_code
      - valuation_basis
      - liquidity_level
      - ownership_scope
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  liability_list:
    screen_id: MP-005
    api:
      - GET /v1/money-planner/liabilities
      - POST /v1/money-planner/liabilities
      - PATCH /v1/money-planner/liabilities/{liability_id}
      - DELETE /v1/money-planner/liabilities/{liability_id}
    logical_tables:
      - life.mp_liability_item
    validation:
      - liability_type
      - balance_amount
      - currency_code
      - ownership_scope
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  saving_goal_list:
    screen_id: MP-006
    api:
      - GET /v1/money-planner/saving-goals
      - POST /v1/money-planner/saving-goals
      - PATCH /v1/money-planner/saving-goals/{goal_id}
      - DELETE /v1/money-planner/saving-goals/{goal_id}
    logical_tables:
      - life.mp_saving_goal
    validation:
      - goal_name
      - target_amount
      - current_saved_amount
      - target_date
      - status
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  event_budget_list:
    screen_id: MP-007
    api:
      - GET /v1/money-planner/event-budgets
      - POST /v1/money-planner/event-budgets
      - PATCH /v1/money-planner/event-budgets/{event_budget_id}
      - DELETE /v1/money-planner/event-budgets/{event_budget_id}
    logical_tables:
      - life.mp_event_budget
    validation:
      - event_name
      - planned_date
      - target_amount
      - priority
      - visibility_scope
    permission:
      - owner full
      - partner_editor shared_only
      - viewer read_only

  family_sharing:
    screen_id: MP-011
    api:
      - GET /v1/money-planner/sharing/members
      - POST /v1/money-planner/sharing/members
      - PATCH /v1/money-planner/sharing/members/{shared_member_id}
      - DELETE /v1/money-planner/sharing/members/{shared_member_id}
      - GET /v1/money-planner/sharing/members/{shared_member_id}/visible-summary
    logical_tables:
      - life.mp_shared_member
    logical_views:
      - life.v_mp_member_visible_object_summary
    validation:
      - role
      - member_visibility_scope
    permission:
      - owner manage
      - partner_editor limited read
      - viewer none

  linkage_settings:
    screen_id: MP-014
    api:
      - GET /v1/money-planner/linkages
      - PATCH /v1/money-planner/linkages/{target_system}
      - POST /v1/money-planner/linkages/share
    logical_tables:
      - logical linkage setting state
    validation:
      - target_system
      - share_scope
      - payload shape
    permission:
      - owner manage/share
      - partner_editor limited read
      - viewer none

  receive_candidate_review:
    screen_id: MP-015
    api:
      - GET /v1/money-planner/receive-candidates
      - GET /v1/money-planner/receive-candidates/{candidate_registry_id}
      - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/status
      - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/visibility
      - GET /v1/money-planner/receive-candidates/{candidate_registry_id}/duplicate-reference
    logical_tables:
      - life.mp_receive_candidate_registry
    logical_views:
      - life.v_mp_receive_candidate_summary
    validation:
      - import_status transition
      - visibility_scope
      - duplicate rule
    permission:
      - owner full
      - partner_editor read_limited
      - viewer none
