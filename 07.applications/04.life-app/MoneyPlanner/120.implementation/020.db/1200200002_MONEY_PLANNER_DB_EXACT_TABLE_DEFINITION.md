# ============================================================
# MONEY PLANNER DB EXACT TABLE DEFINITION
# 佐藤（DB担当）レビュー前提
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db

db_policy:
  schema_name: app_money_planner
  primary_key:
    - UUID
  lifecycle_columns:
    - created_at
    - updated_at
    - deleted_at
  amount_policy:
    - amount系は numeric(18,2) 前提
  currency_policy:
    - currency_code は char(3) または varchar(3) 前提
  notes:
    - 本資料は logical exact 定義
    - 実SQL化前に佐藤レビュー参加を前提とする

tables:
  mp_plan:
    purpose:
      - MoneyPlanner の1計画単位
    columns:
      - plan_id: uuid pk
      - owner_user_id: uuid not null
      - base_currency: varchar(3) not null
      - display_currency: varchar(3) null
      - plan_name: varchar(200) not null
      - status: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_income_item:
    purpose:
      - 収入管理
    columns:
      - income_item_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - title: varchar(200) not null
      - category: varchar(100) not null
      - amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - frequency: varchar(30) not null
      - start_date: date not null
      - end_date: date null
      - active_flag: boolean not null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_expense_item:
    purpose:
      - 支出管理
    columns:
      - expense_item_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - title: varchar(200) not null
      - category: varchar(100) not null
      - amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - frequency: varchar(30) not null
      - necessity_level: varchar(30) not null
      - start_date: date not null
      - end_date: date null
      - active_flag: boolean not null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_asset_item:
    purpose:
      - 資産台帳
    columns:
      - asset_item_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - asset_type: varchar(50) not null
      - title: varchar(200) not null
      - amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - institution_name: varchar(200) null
      - valuation_basis: varchar(50) not null
      - liquidity_level: varchar(30) not null
      - ownership_scope: varchar(30) not null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_liability_item:
    purpose:
      - 負債台帳
    columns:
      - liability_item_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - liability_type: varchar(50) not null
      - title: varchar(200) not null
      - balance_amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - monthly_payment: numeric(18,2) null
      - interest_note: text null
      - due_date: date null
      - ownership_scope: varchar(30) not null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_saving_goal:
    purpose:
      - 目標積立
    columns:
      - saving_goal_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - goal_name: varchar(200) not null
      - target_amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - current_saved_amount: numeric(18,2) not null
      - monthly_target_amount: numeric(18,2) null
      - target_date: date null
      - linked_event_budget_id: uuid null
      - status: varchar(30) not null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_event_budget:
    purpose:
      - ライフイベント費用
    columns:
      - event_budget_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - event_name: varchar(200) not null
      - planned_date: date null
      - target_amount: numeric(18,2) not null
      - currency_code: varchar(3) not null
      - priority: varchar(30) not null
      - related_family_member: varchar(200) null
      - funding_source_note: text null
      - memo: text null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_scenario:
    purpose:
      - 比較シナリオ
    columns:
      - scenario_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - name: varchar(200) not null
      - description: text null
      - scenario_type: varchar(50) not null
      - base_currency: varchar(3) not null
      - active_flag: boolean not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_shared_member:
    purpose:
      - 共同利用メンバー
    columns:
      - shared_member_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - user_ref: varchar(200) not null
      - display_name: varchar(200) not null
      - role: varchar(30) not null
      - visibility_scope: varchar(30) not null
      - invited_at: timestamptz not null
      - accepted_at: timestamptz null
      - status: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_memo_item:
    purpose:
      - 補足メモ
    columns:
      - memo_item_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - owner_user_id: uuid not null
      - memo_type: varchar(50) not null
      - title: varchar(200) not null
      - body: text not null
      - visibility_scope: varchar(30) not null
      - created_at: timestamptz not null
      - updated_at: timestamptz not null
      - deleted_at: timestamptz null

  mp_financial_snapshot:
    purpose:
      - 月次/年次スナップショット
    columns:
      - financial_snapshot_id: uuid pk
      - plan_id: uuid fk->mp_plan.plan_id not null
      - snapshot_date: date not null
      - base_currency: varchar(3) not null
      - total_income: numeric(18,2) not null
      - total_expense: numeric(18,2) not null
      - total_assets: numeric(18,2) not null
      - total_liabilities: numeric(18,2) not null
      - net_worth: numeric(18,2) not null
      - scenario_id: uuid null
      - created_at: timestamptz not null

recommended_indexes:
  - mp_income_item(plan_id, active_flag, start_date)
  - mp_expense_item(plan_id, active_flag, start_date)
  - mp_asset_item(plan_id, asset_type)
  - mp_liability_item(plan_id, liability_type)
  - mp_saving_goal(plan_id, status, target_date)
  - mp_event_budget(plan_id, planned_date, priority)
  - mp_scenario(plan_id, active_flag)
  - mp_shared_member(plan_id, role, status)
  - mp_financial_snapshot(plan_id, snapshot_date)

join_principles:
  - すべての主データは mp_plan に従属
  - shared member は plan 単位で管理
  - snapshot は plan 単位 + scenario 単位で保存可能
