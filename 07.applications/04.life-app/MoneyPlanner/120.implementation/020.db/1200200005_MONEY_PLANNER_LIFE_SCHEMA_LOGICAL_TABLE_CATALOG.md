# ============================================================
# MONEY PLANNER LIFE SCHEMA LOGICAL TABLE CATALOG
# ============================================================

status: canonical-draft
system: MoneyPlanner
schema_name: life

logical_tables:
  - logical_name: life.mp_plan
    purpose:
      - MoneyPlanner の1計画単位
    key_fields:
      - plan_id
      - owner_user_id
      - plan_name
      - base_currency
      - display_currency
      - status

  - logical_name: life.mp_income_item
    purpose:
      - 収入管理
    key_fields:
      - income_item_id
      - plan_id
      - title
      - category
      - amount
      - currency_code
      - frequency
      - active_flag
      - visibility_scope

  - logical_name: life.mp_expense_item
    purpose:
      - 支出管理
    key_fields:
      - expense_item_id
      - plan_id
      - title
      - category
      - amount
      - currency_code
      - frequency
      - necessity_level
      - active_flag
      - visibility_scope

  - logical_name: life.mp_asset_item
    purpose:
      - 資産台帳
    key_fields:
      - asset_item_id
      - plan_id
      - asset_type
      - title
      - amount
      - currency_code
      - ownership_scope
      - visibility_scope

  - logical_name: life.mp_liability_item
    purpose:
      - 負債台帳
    key_fields:
      - liability_item_id
      - plan_id
      - liability_type
      - title
      - balance_amount
      - currency_code
      - ownership_scope
      - visibility_scope

  - logical_name: life.mp_saving_goal
    purpose:
      - 目標積立
    key_fields:
      - saving_goal_id
      - plan_id
      - goal_name
      - target_amount
      - currency_code
      - current_saved_amount
      - status
      - visibility_scope

  - logical_name: life.mp_event_budget
    purpose:
      - ライフイベント費用計画
    key_fields:
      - event_budget_id
      - plan_id
      - event_name
      - planned_date
      - target_amount
      - currency_code
      - priority
      - visibility_scope

  - logical_name: life.mp_scenario
    purpose:
      - 比較シナリオ
    key_fields:
      - scenario_id
      - plan_id
      - name
      - scenario_type
      - base_currency
      - active_flag

  - logical_name: life.mp_shared_member
    purpose:
      - 共有メンバー管理
    key_fields:
      - shared_member_id
      - plan_id
      - user_ref
      - display_name
      - role
      - visibility_scope
      - status

  - logical_name: life.mp_memo_item
    purpose:
      - 保険/年金/税金概算/引継ぎメモ
    key_fields:
      - memo_item_id
      - plan_id
      - memo_type
      - title
      - body
      - visibility_scope

  - logical_name: life.mp_financial_snapshot
    purpose:
      - 月次/年次スナップショット
    key_fields:
      - financial_snapshot_id
      - plan_id
      - snapshot_date
      - base_currency
      - total_income
      - total_expense
      - total_assets
      - total_liabilities
      - net_worth
      - scenario_id

logical_views:
  - logical_name: life.v_mp_plan_balance_summary
    purpose:
      - ダッシュボード用サマリ
  - logical_name: life.v_mp_goal_progress_summary
    purpose:
      - 目標進捗サマリ
  - logical_name: life.v_mp_upcoming_event_budget_summary
    purpose:
      - 今後イベント費用サマリ

join_policy:
  - 主要データは mp_plan 配下で束ねる
  - shared_member は plan 単位
  - snapshot は plan 単位 + scenario 単位で保持可能
