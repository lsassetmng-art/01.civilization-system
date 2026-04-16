# ============================================================
# MONEY PLANNER LIFE SCHEMA LOGICAL TABLE COLUMN EXACT
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db
schema_name: life

policy:
  - logical exact 定義であり physical SQL ではない
  - MoneyPlanner 固有データは life schema 配下に置く
  - 接頭辞 mp_ を使用する
  - amount 系は decimal_string 相当精度を前提とする
  - 実装時の SQL 化は別工程
  - create/update/delete/share/import は監査対象候補

logical_tables:

  life.mp_plan:
    purpose:
      - MoneyPlanner の計画ルート
    columns:
      - column_name: plan_id
        logical_type: uuid
        nullable: false
        required_on_create: true
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
        required_on_create: true
      - column_name: plan_name
        logical_type: string(200)
        nullable: false
        required_on_create: true
      - column_name: base_currency
        logical_type: string(3)
        nullable: false
        required_on_create: true
      - column_name: display_currency
        logical_type: string(3)
        nullable: true
        required_on_create: false
      - column_name: status
        logical_type: enum[active,archived,draft]
        nullable: false
        required_on_create: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_income_item:
    purpose:
      - 収入項目
    columns:
      - column_name: income_item_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: title
        logical_type: string(200)
        nullable: false
      - column_name: category
        logical_type: string(100)
        nullable: false
      - column_name: amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: frequency
        logical_type: enum[daily,weekly,monthly,yearly,one_time]
        nullable: false
      - column_name: start_date
        logical_type: yyyy-mm-dd
        nullable: false
      - column_name: end_date
        logical_type: yyyy-mm-dd
        nullable: true
      - column_name: active_flag
        logical_type: boolean
        nullable: false
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_expense_item:
    purpose:
      - 支出項目
    columns:
      - column_name: expense_item_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: title
        logical_type: string(200)
        nullable: false
      - column_name: category
        logical_type: string(100)
        nullable: false
      - column_name: amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: frequency
        logical_type: enum[daily,weekly,monthly,yearly,one_time]
        nullable: false
      - column_name: necessity_level
        logical_type: enum[essential,normal,optional]
        nullable: false
      - column_name: start_date
        logical_type: yyyy-mm-dd
        nullable: false
      - column_name: end_date
        logical_type: yyyy-mm-dd
        nullable: true
      - column_name: active_flag
        logical_type: boolean
        nullable: false
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_asset_item:
    purpose:
      - 資産台帳
    columns:
      - column_name: asset_item_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: asset_type
        logical_type: enum[cash,bank_deposit,securities,insurance,real_estate,other]
        nullable: false
      - column_name: title
        logical_type: string(200)
        nullable: false
      - column_name: amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: institution_name
        logical_type: string(200)
        nullable: true
      - column_name: valuation_basis
        logical_type: enum[input_manual,latest_known,estimate]
        nullable: false
      - column_name: liquidity_level
        logical_type: enum[high,medium,low]
        nullable: false
      - column_name: ownership_scope
        logical_type: enum[individual,couple,family]
        nullable: false
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_liability_item:
    purpose:
      - 負債台帳
    columns:
      - column_name: liability_item_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: liability_type
        logical_type: enum[mortgage,loan,credit_card,other]
        nullable: false
      - column_name: title
        logical_type: string(200)
        nullable: false
      - column_name: balance_amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: monthly_payment
        logical_type: decimal_string
        nullable: true
      - column_name: interest_note
        logical_type: text
        nullable: true
      - column_name: due_date
        logical_type: yyyy-mm-dd
        nullable: true
      - column_name: ownership_scope
        logical_type: enum[individual,couple,family]
        nullable: false
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_saving_goal:
    purpose:
      - 目標積立
    columns:
      - column_name: saving_goal_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: goal_name
        logical_type: string(200)
        nullable: false
      - column_name: target_amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: current_saved_amount
        logical_type: decimal_string
        nullable: false
      - column_name: monthly_target_amount
        logical_type: decimal_string
        nullable: true
      - column_name: target_date
        logical_type: yyyy-mm-dd
        nullable: true
      - column_name: linked_event_budget_id
        logical_type: uuid
        nullable: true
      - column_name: status
        logical_type: enum[active,paused,completed,archived]
        nullable: false
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: review_note
        logical_type: text
        nullable: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_event_budget:
    purpose:
      - ライフイベント費用
    columns:
      - column_name: event_budget_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: event_name
        logical_type: string(200)
        nullable: false
      - column_name: planned_date
        logical_type: yyyy-mm-dd
        nullable: true
      - column_name: target_amount
        logical_type: decimal_string
        nullable: false
      - column_name: currency_code
        logical_type: string(3)
        nullable: false
      - column_name: priority
        logical_type: enum[high,medium,low]
        nullable: false
      - column_name: related_family_member
        logical_type: string(200)
        nullable: true
      - column_name: funding_source_note
        logical_type: text
        nullable: true
      - column_name: memo
        logical_type: text
        nullable: true
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: review_note
        logical_type: text
        nullable: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_scenario:
    purpose:
      - 比較シナリオ
    columns:
      - column_name: scenario_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: name
        logical_type: string(200)
        nullable: false
      - column_name: description
        logical_type: text
        nullable: true
      - column_name: scenario_type
        logical_type: enum[default,saving,expense_increase,income_decrease,event_forward]
        nullable: false
      - column_name: base_currency
        logical_type: string(3)
        nullable: false
      - column_name: active_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_shared_member:
    purpose:
      - 共有メンバー
    columns:
      - column_name: shared_member_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: user_ref
        logical_type: string(200)
        nullable: false
      - column_name: display_name
        logical_type: string(200)
        nullable: false
      - column_name: role
        logical_type: enum[owner,partner_editor,viewer]
        nullable: false
      - column_name: visibility_scope
        logical_type: enum[all,shared_only,selected_only]
        nullable: false
      - column_name: invited_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: accepted_at
        logical_type: iso8601_timestamp
        nullable: true
      - column_name: status
        logical_type: enum[pending,active,removed]
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_memo_item:
    purpose:
      - 補足メモ
    columns:
      - column_name: memo_item_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: owner_user_id
        logical_type: uuid
        nullable: false
      - column_name: memo_type
        logical_type: enum[general,insurance,pension,tax_estimate,handover]
        nullable: false
      - column_name: title
        logical_type: string(200)
        nullable: false
      - column_name: body
        logical_type: text
        nullable: false
      - column_name: visibility_scope
        logical_type: enum[private,shared,selected_only]
        nullable: false
      - column_name: import_source_system
        logical_type: enum[manual,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: import_source_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: import_status
        logical_type: enum[confirmed,draft_candidate,imported,reviewed,rejected]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

  life.mp_financial_snapshot:
    purpose:
      - 時点スナップショット
    columns:
      - column_name: financial_snapshot_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: snapshot_date
        logical_type: yyyy-mm-dd
        nullable: false
      - column_name: base_currency
        logical_type: string(3)
        nullable: false
      - column_name: total_income
        logical_type: decimal_string
        nullable: false
      - column_name: total_expense
        logical_type: decimal_string
        nullable: false
      - column_name: total_assets
        logical_type: decimal_string
        nullable: false
      - column_name: total_liabilities
        logical_type: decimal_string
        nullable: false
      - column_name: net_worth
        logical_type: decimal_string
        nullable: false
      - column_name: scenario_id
        logical_type: uuid
        nullable: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false

  life.mp_receive_candidate_registry:
    purpose:
      - 他アプリから受け取った candidate の原本管理
    columns:
      - column_name: candidate_registry_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: source_system
        logical_type: enum[life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: source_case_id
        logical_type: uuid_or_string
        nullable: false
      - column_name: source_object_id
        logical_type: uuid_or_string
        nullable: false
      - column_name: candidate_type
        logical_type: enum[event_budget,saving_goal,memo,asset,liability]
        nullable: false
      - column_name: mapped_target_object_id
        logical_type: uuid
        nullable: true
      - column_name: import_status
        logical_type: enum[received,draft_candidate,reviewed,confirmed,rejected,archived]
        nullable: false
      - column_name: duplicate_candidate_flag
        logical_type: boolean
        nullable: false
      - column_name: duplicate_reference_object_id
        logical_type: uuid
        nullable: true
      - column_name: payload_snapshot
        logical_type: json_like_object
        nullable: false
      - column_name: review_note
        logical_type: text
        nullable: true
      - column_name: received_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: reviewed_at
        logical_type: iso8601_timestamp
        nullable: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: updated_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: deleted_at
        logical_type: iso8601_timestamp
        nullable: true

logical_views:
  - life.v_mp_plan_balance_summary
  - life.v_mp_goal_progress_summary
  - life.v_mp_upcoming_event_budget_summary
  - life.v_mp_receive_candidate_summary
