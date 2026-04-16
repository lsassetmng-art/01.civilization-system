# ============================================================
# MONEY PLANNER DASHBOARD EXACT PAYLOAD RECONNECTED TO LOGICAL VIEW
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - dashboard exact payload を logical view 正本に接続し直す
  - UI 初期表示の必要項目を固定する
  - owner summary と shared summary の差を扱えるようにする

logical_view_bindings:
  owner_summary:
    source_view:
      - life.v_mp_dashboard_composed_summary
  shared_summary:
    source_view:
      - life.v_mp_shared_balance_summary
  candidate_summary:
    source_view:
      - life.v_mp_receive_candidate_summary

endpoint:
  method: GET
  path: /v1/money-planner/dashboard

query:
  base_currency:
    type: string
    required: true
  display_currency:
    type: string
    required: false
  scenario_id:
    type: uuid
    required: false
  target_month:
    type: string(yyyy-mm)
    required: true
  target_year:
    type: integer
    required: true
  summary_scope:
    type: enum[owner,shared]
    required: true
    notes:
      - owner = private/shared/selected_only を含む owner 視点
      - shared = shared のみで再計算した共有視点

response_200:
  success: true
  data:
    summary_scope: "owner"
    summary:
      plan_id: "uuid"
      owner_user_id: "uuid"
      base_currency: "JPY"
      total_income: "1200000.00"
      total_expense: "850000.00"
      total_assets: "5200000.00"
      total_liabilities: "1800000.00"
      net_worth: "3400000.00"

    goal_summary:
      active_goal_count: 3
      completed_goal_count: 1
      total_target_amount: "2000000.00"
      total_current_saved_amount: "750000.00"

    upcoming_event_summary:
      upcoming_count: 2
      total_upcoming_amount: "450000.00"
      next_event_name: "住宅購入初期費用"
      next_event_date: "2027-04-01"
      next_event_amount: "300000.00"

    receive_candidate_summary:
      received_count: 4
      draft_candidate_count: 2
      reviewed_count: 1
      confirmed_count: 5
      rejected_count: 1
      duplicate_candidate_count: 1
      latest_received_at: "2026-04-14T20:00:00+09:00"

    monthly_projection:
      target_month: "2026-04"
      expected_income: "300000.00"
      expected_expense: "220000.00"
      expected_balance: "80000.00"
      shortage_flag: false
      high_priority_event_amount: "300000.00"

    yearly_projection:
      target_year: 2026
      expected_income: "3600000.00"
      expected_expense: "2900000.00"
      expected_balance: "700000.00"
      event_impact_amount: "300000.00"
      goal_target_total: "1200000.00"
      shortage_months_count: 0

    alerts:
      - alert_id: "uuid"
        alert_type: "shortage_risk"
        severity: "high"
        title: "2026-09 に資金不足見込み"
        message: "大型イベント費用により月次残高がマイナス見込みです。"
        acknowledged_flag: false
        created_at: "2026-04-14T20:00:00+09:00"

    calculated_at: "2026-04-14T20:00:00+09:00"
  error: null

response_rules:
  - summary_scope=owner のとき owner summary を返す
  - summary_scope=shared のとき shared summary を返す
  - receive_candidate_summary は owner のみ full 表示
  - partner_editor は shared summary + candidate summary limited を返してよい
  - viewer は shared summary のみ表示可
  - fixed key を基本とし、欠損は null で返す

fixed_key_nullable_fields:
  - upcoming_event_summary.next_event_name
  - upcoming_event_summary.next_event_date
  - upcoming_event_summary.next_event_amount
  - receive_candidate_summary.latest_received_at

screen_binding:
  target_screen:
    - dashboard
