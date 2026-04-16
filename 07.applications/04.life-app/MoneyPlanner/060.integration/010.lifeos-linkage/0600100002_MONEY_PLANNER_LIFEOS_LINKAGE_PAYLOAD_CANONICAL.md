# ============================================================
# MONEY PLANNER LIFEOS LINKAGE PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner

linkage_policy:
  - 明示共有のみ
  - 必要最小限データのみ
  - 投資助言/税務判断/法務判断は共有しない
  - 共有記録を残す

payloads:
  to_lifeplanner:
    purpose:
      - 人生設計へ資金計画の要約共有
    request:
      target_system: "life_planner"
      share_scope: "financial_plan_summary"
      payload:
        plan_id: "uuid"
        base_currency: "JPY"
        monthly_projection:
          expected_income: "300000.00"
          expected_expense: "220000.00"
          expected_balance: "80000.00"
        yearly_projection:
          expected_income: "3600000.00"
          expected_expense: "2900000.00"
          expected_balance: "700000.00"
        saving_goals:
          - goal_name: "教育資金"
            target_amount: "1000000.00"
            currency_code: "JPY"
            target_date: "2029-03-31"
        event_budgets:
          - event_name: "住宅購入初期費用"
            target_amount: "300000.00"
            currency_code: "JPY"
            planned_date: "2027-04-01"
    response:
      success: true
      data:
        target_system: "life_planner"
        shared_at: "2026-04-14T10:00:00+09:00"

  to_end_of_life_planner:
    purpose:
      - 終活準備へ基礎資産概要共有
    request:
      target_system: "end_of_life_planner"
      share_scope: "asset_liability_summary"
      payload:
        plan_id: "uuid"
        base_currency: "JPY"
        total_assets: "5200000.00"
        total_liabilities: "1800000.00"
        net_worth: "3400000.00"
        asset_summaries:
          - asset_type: "bank_deposit"
            amount: "1200000.00"
            currency_code: "JPY"
          - asset_type: "real_estate"
            amount: "3000000.00"
            currency_code: "JPY"
        liability_summaries:
          - liability_type: "mortgage"
            balance_amount: "1800000.00"
            currency_code: "JPY"
    response:
      success: true
      data:
        target_system: "end_of_life_planner"
        shared_at: "2026-04-14T10:00:00+09:00"

  to_inheritance_support:
    purpose:
      - 相続準備へ資産概要共有
    request:
      target_system: "inheritance_support"
      share_scope: "asset_summary"
      payload:
        plan_id: "uuid"
        base_currency: "JPY"
        total_assets: "5200000.00"
        total_liabilities: "1800000.00"
        net_worth: "3400000.00"
        asset_summaries:
          - asset_type: "bank_deposit"
            amount: "1200000.00"
            currency_code: "JPY"
          - asset_type: "real_estate"
            amount: "3000000.00"
            currency_code: "JPY"
        memo:
          - title: "引継ぎメモ"
            body: "不動産の詳細は別管理"
    response:
      success: true
      data:
        target_system: "inheritance_support"
        shared_at: "2026-04-14T10:00:00+09:00"

common_audit_fields:
  - source_app: MoneyPlanner
  - share_executed_by: owner_user_id
  - share_scope
  - shared_at
  - target_system
