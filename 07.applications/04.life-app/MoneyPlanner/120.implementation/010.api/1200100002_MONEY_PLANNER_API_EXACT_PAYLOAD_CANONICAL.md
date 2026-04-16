# ============================================================
# MONEY PLANNER API EXACT PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

api_policy:
  style:
    - JSON request / response 固定
    - REST風
    - 資源単位設計
    - 作成/更新/削除は明示操作のみ
    - 金額は amount + currency_code で扱う
    - amount は decimal string
    - timestamp は ISO8601 string
    - id は UUID
  common_request_headers:
    - Authorization: Bearer <token>
    - Content-Type: application/json
    - X-LifeOS-App: MoneyPlanner
  common_response_rules:
    - success は true / false
    - data を返す
    - error 時は error.code / error.message を返す
    - 一覧は page / page_size / total_count を返す
  role_policy:
    - owner は全件操作可能
    - partner_editor は shared 範囲のみ編集可能
    - viewer は閲覧のみ

dashboard_api:
  endpoint: GET /v1/money-planner/dashboard
  query:
    base_currency: string
    display_currency: string|null
    scenario_id: uuid|null
    target_month: yyyy-mm
    target_year: integer
  response_200:
    success: true
    data:
      summary:
        total_income: "1200000.00"
        total_expense: "850000.00"
        total_assets: "5200000.00"
        total_liabilities: "1800000.00"
        net_worth: "3400000.00"
        base_currency: "JPY"
        display_currency: "JPY"
      monthly_projection:
        target_month: "2026-04"
        expected_income: "300000.00"
        expected_expense: "220000.00"
        expected_balance: "80000.00"
        shortage_flag: false
      yearly_projection:
        target_year: 2026
        expected_income: "3600000.00"
        expected_expense: "2900000.00"
        expected_balance: "700000.00"
      goals:
        active_goal_count: 3
        completed_goal_count: 1
        total_target_amount: "2000000.00"
        total_current_saved_amount: "750000.00"
      event_budgets:
        upcoming_count: 2
        total_upcoming_amount: "450000.00"
      alerts:
        - alert_id: "uuid"
          alert_type: "shortage_risk"
          severity: "high"
          title: "2026-09 に資金不足見込み"
          message: "イベント費用の影響で月次残高がマイナス見込みです。"
    error: null

income_api:
  list:
    endpoint: GET /v1/money-planner/incomes
    query:
      page: integer
      page_size: integer
      category: string|null
      frequency: string|null
      active_flag: boolean|null
    response_200:
      success: true
      data:
        items:
          - id: "uuid"
            title: "給与"
            category: "salary"
            amount: "300000.00"
            currency_code: "JPY"
            frequency: "monthly"
            start_date: "2026-01-01"
            end_date: null
            active_flag: true
            memo: null
            visibility_scope: "shared"
            updated_at: "2026-04-14T10:00:00+09:00"
        page: 1
        page_size: 20
        total_count: 1
      error: null

  create:
    endpoint: POST /v1/money-planner/incomes
    request:
      title: "給与"
      category: "salary"
      amount: "300000.00"
      currency_code: "JPY"
      frequency: "monthly"
      start_date: "2026-01-01"
      end_date: null
      active_flag: true
      memo: "手取り"
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

  update:
    endpoint: PATCH /v1/money-planner/incomes/{income_id}
    request:
      title: "給与"
      category: "salary"
      amount: "320000.00"
      currency_code: "JPY"
      frequency: "monthly"
      start_date: "2026-01-01"
      end_date: null
      active_flag: true
      memo: "昇給反映"
      visibility_scope: "shared"
    response_200:
      success: true
      data:
        id: "uuid"
        updated_at: "2026-04-14T10:15:00+09:00"
      error: null

  delete:
    endpoint: DELETE /v1/money-planner/incomes/{income_id}
    response_200:
      success: true
      data:
        id: "uuid"
        deleted_at: "2026-04-14T10:20:00+09:00"
      error: null

expense_api:
  create:
    endpoint: POST /v1/money-planner/expenses
    request:
      title: "家賃"
      category: "housing"
      amount: "85000.00"
      currency_code: "JPY"
      frequency: "monthly"
      necessity_level: "essential"
      start_date: "2026-01-01"
      end_date: null
      active_flag: true
      memo: null
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

asset_api:
  create:
    endpoint: POST /v1/money-planner/assets
    request:
      asset_type: "bank_deposit"
      title: "普通預金"
      amount: "1200000.00"
      currency_code: "JPY"
      institution_name: "〇〇銀行"
      valuation_basis: "input_manual"
      liquidity_level: "high"
      ownership_scope: "family"
      memo: null
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

liability_api:
  create:
    endpoint: POST /v1/money-planner/liabilities
    request:
      liability_type: "mortgage"
      title: "住宅ローン"
      balance_amount: "1800000.00"
      currency_code: "JPY"
      monthly_payment: "70000.00"
      interest_note: "変動金利"
      due_date: "2045-03-31"
      ownership_scope: "family"
      memo: null
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

saving_goal_api:
  create:
    endpoint: POST /v1/money-planner/saving-goals
    request:
      goal_name: "教育資金"
      target_amount: "1000000.00"
      currency_code: "JPY"
      current_saved_amount: "250000.00"
      monthly_target_amount: "30000.00"
      target_date: "2029-03-31"
      linked_event_id: null
      status: "active"
      memo: null
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

event_budget_api:
  create:
    endpoint: POST /v1/money-planner/event-budgets
    request:
      event_name: "住宅購入初期費用"
      planned_date: "2027-04-01"
      target_amount: "300000.00"
      currency_code: "JPY"
      priority: "high"
      related_family_member: null
      funding_source_note: "貯蓄から充当予定"
      memo: null
      visibility_scope: "shared"
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

projection_api:
  monthly:
    endpoint: GET /v1/money-planner/projections/monthly
    query:
      target_month: yyyy-mm
      base_currency: string
      scenario_id: uuid|null
    response_200:
      success: true
      data:
        target_month: "2026-04"
        expected_income: "300000.00"
        expected_expense: "220000.00"
        expected_balance: "80000.00"
        shortage_flag: false
        breakdown:
          incomes:
            - category: "salary"
              amount: "300000.00"
          expenses:
            - category: "housing"
              amount: "85000.00"
            - category: "food"
              amount: "50000.00"
      error: null

  yearly:
    endpoint: GET /v1/money-planner/projections/yearly
    query:
      target_year: integer
      base_currency: string
      scenario_id: uuid|null
    response_200:
      success: true
      data:
        target_year: 2026
        expected_income: "3600000.00"
        expected_expense: "2900000.00"
        expected_balance: "700000.00"
        event_impact_amount: "300000.00"
        goal_target_total: "1200000.00"
        shortage_months: []
      error: null

scenario_api:
  list:
    endpoint: GET /v1/money-planner/scenarios
    response_200:
      success: true
      data:
        items:
          - id: "uuid-default"
            name: "通常"
            scenario_type: "default"
            base_currency: "JPY"
            active_flag: true
          - id: "uuid-save"
            name: "節約"
            scenario_type: "saving"
            base_currency: "JPY"
            active_flag: false
      error: null

  create:
    endpoint: POST /v1/money-planner/scenarios
    request:
      name: "節約"
      description: "外食費を抑える"
      scenario_type: "saving"
      base_currency: "JPY"
      adjustments:
        expenses:
          - expense_id: "uuid"
            new_amount: "30000.00"
        events: []
        incomes: []
    response_201:
      success: true
      data:
        id: "uuid"
        created_at: "2026-04-14T10:00:00+09:00"
      error: null

  compare:
    endpoint: POST /v1/money-planner/scenarios/compare
    request:
      scenario_ids:
        - "uuid-default"
        - "uuid-save"
      target_year: 2026
      base_currency: "JPY"
    response_200:
      success: true
      data:
        compared:
          - scenario_id: "uuid-default"
            name: "通常"
            expected_balance: "700000.00"
            net_worth: "3400000.00"
            shortage_month: null
          - scenario_id: "uuid-save"
            name: "節約"
            expected_balance: "900000.00"
            net_worth: "3600000.00"
            shortage_month: null
      error: null

sharing_api:
  invite_member:
    endpoint: POST /v1/money-planner/sharing/members
    request:
      user_ref: "family_user_01"
      display_name: "家族A"
      role: "partner_editor"
      visibility_scope: "all"
    response_201:
      success: true
      data:
        id: "uuid"
        invited_at: "2026-04-14T10:00:00+09:00"
        status: "pending"
      error: null

alerts_api:
  endpoint: GET /v1/money-planner/alerts
  response_200:
    success: true
    data:
      items:
        - alert_id: "uuid"
          alert_type: "shortage_risk"
          severity: "high"
          target_month: "2026-09"
          related_goal_id: null
          related_event_budget_id: "uuid"
          title: "2026-09 資金不足見込み"
          message: "大型イベント費用により月次残高がマイナス見込みです。"
          acknowledged_flag: false
          created_at: "2026-04-14T10:00:00+09:00"
    error: null

error_contract:
  sample:
    success: false
    data: null
    error:
      code: "MP-403-001"
      message: "viewer role cannot update this resource"
