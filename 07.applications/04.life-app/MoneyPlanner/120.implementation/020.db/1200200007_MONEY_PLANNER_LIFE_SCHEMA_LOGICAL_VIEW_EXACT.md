# ============================================================
# MONEY PLANNER LIFE SCHEMA LOGICAL VIEW EXACT
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db
schema_name: life

policy:
  - logical view 定義であり physical SQL ではない
  - UI 初期表示と集計用途を安定化させる
  - private/shared/selected_only を考慮した summary 分離を前提とする
  - amount は base_currency 基準の表示用論理値として扱う
  - view は table 正本を置き換えない

logical_views:

  life.v_mp_plan_balance_summary:
    purpose:
      - ダッシュボード上部サマリ
    grain:
      - 1 row per plan_id
    source_tables:
      - life.mp_plan
      - life.mp_income_item
      - life.mp_expense_item
      - life.mp_asset_item
      - life.mp_liability_item
    logical_columns:
      - plan_id: uuid
      - owner_user_id: uuid
      - base_currency: string(3)
      - total_income: decimal_string
      - total_expense: decimal_string
      - total_assets: decimal_string
      - total_liabilities: decimal_string
      - net_worth: decimal_string
      - active_income_count: integer
      - active_expense_count: integer
      - asset_count: integer
      - liability_count: integer
      - calculated_at: iso8601_timestamp

  life.v_mp_goal_progress_summary:
    purpose:
      - 目標積立の進捗集計
    grain:
      - 1 row per plan_id
    source_tables:
      - life.mp_saving_goal
    logical_columns:
      - plan_id: uuid
      - active_goal_count: integer
      - completed_goal_count: integer
      - paused_goal_count: integer
      - archived_goal_count: integer
      - total_target_amount: decimal_string
      - total_current_saved_amount: decimal_string
      - total_remaining_amount: decimal_string
      - calculated_at: iso8601_timestamp

  life.v_mp_upcoming_event_budget_summary:
    purpose:
      - 今後イベント費用の集計
    grain:
      - 1 row per plan_id
    source_tables:
      - life.mp_event_budget
    logical_columns:
      - plan_id: uuid
      - upcoming_count: integer
      - upcoming_high_priority_count: integer
      - total_upcoming_amount: decimal_string
      - next_event_name: string(200)|null
      - next_event_date: yyyy-mm-dd|null
      - next_event_amount: decimal_string|null
      - calculated_at: iso8601_timestamp

  life.v_mp_receive_candidate_summary:
    purpose:
      - 他アプリ受入候補の集計
    grain:
      - 1 row per plan_id
    source_tables:
      - life.mp_receive_candidate_registry
    logical_columns:
      - plan_id: uuid
      - received_count: integer
      - draft_candidate_count: integer
      - reviewed_count: integer
      - confirmed_count: integer
      - rejected_count: integer
      - duplicate_candidate_count: integer
      - latest_received_at: iso8601_timestamp|null
      - calculated_at: iso8601_timestamp

  life.v_mp_shared_balance_summary:
    purpose:
      - shared 可視範囲だけで再計算した家族共有向け summary
    grain:
      - 1 row per plan_id
    source_tables:
      - life.mp_income_item
      - life.mp_expense_item
      - life.mp_asset_item
      - life.mp_liability_item
    filter_policy:
      - visibility_scope = shared のみ
    logical_columns:
      - plan_id: uuid
      - shared_total_income: decimal_string
      - shared_total_expense: decimal_string
      - shared_total_assets: decimal_string
      - shared_total_liabilities: decimal_string
      - shared_net_worth: decimal_string
      - calculated_at: iso8601_timestamp

  life.v_mp_member_visible_object_summary:
    purpose:
      - メンバー別に見える件数の集計
    grain:
      - 1 row per plan_id x member
    source_tables:
      - life.mp_shared_member
      - life.mp_income_item
      - life.mp_expense_item
      - life.mp_asset_item
      - life.mp_liability_item
      - life.mp_saving_goal
      - life.mp_event_budget
      - life.mp_memo_item
    logical_columns:
      - plan_id: uuid
      - shared_member_id: uuid
      - role: enum[owner,partner_editor,viewer]
      - member_visibility_scope: enum[all,shared_only,selected_only]
      - visible_income_count: integer
      - visible_expense_count: integer
      - visible_asset_count: integer
      - visible_liability_count: integer
      - visible_saving_goal_count: integer
      - visible_event_budget_count: integer
      - visible_memo_count: integer
      - calculated_at: iso8601_timestamp

  life.v_mp_dashboard_composed_summary:
    purpose:
      - ダッシュボード初期表示用の合成 summary
    grain:
      - 1 row per plan_id
    source_views:
      - life.v_mp_plan_balance_summary
      - life.v_mp_goal_progress_summary
      - life.v_mp_upcoming_event_budget_summary
      - life.v_mp_receive_candidate_summary
    logical_columns:
      - plan_id: uuid
      - owner_user_id: uuid
      - base_currency: string(3)
      - total_income: decimal_string
      - total_expense: decimal_string
      - total_assets: decimal_string
      - total_liabilities: decimal_string
      - net_worth: decimal_string
      - active_goal_count: integer
      - completed_goal_count: integer
      - total_target_amount: decimal_string
      - total_current_saved_amount: decimal_string
      - upcoming_count: integer
      - total_upcoming_amount: decimal_string
      - received_candidate_count: integer
      - duplicate_candidate_count: integer
      - calculated_at: iso8601_timestamp

visibility_summary_rules:
  - owner summary は private/shared/selected_only を含めてよい
  - shared summary は shared のみを対象とする
  - member visible summary は member_visibility_scope を適用する
  - selected_only は対象 member にだけ集計へ含める
