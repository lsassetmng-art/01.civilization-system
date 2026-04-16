-- ============================================================
-- MONEY PLANNER DB EXACT SQL DDL
-- 佐藤（DB担当）レビュー前提
-- ============================================================

CREATE SCHEMA IF NOT EXISTS app_money_planner;

CREATE TABLE IF NOT EXISTS app_money_planner.mp_plan (
  plan_id uuid PRIMARY KEY,
  owner_user_id uuid NOT NULL,
  base_currency varchar(3) NOT NULL,
  display_currency varchar(3),
  plan_name varchar(200) NOT NULL,
  status varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_plan_base_currency_len CHECK (char_length(base_currency) = 3),
  CONSTRAINT ck_mp_plan_display_currency_len CHECK (display_currency IS NULL OR char_length(display_currency) = 3)
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_income_item (
  income_item_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  title varchar(200) NOT NULL,
  category varchar(100) NOT NULL,
  amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  frequency varchar(30) NOT NULL,
  start_date date NOT NULL,
  end_date date,
  active_flag boolean NOT NULL DEFAULT true,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_income_item_amount_nonnegative CHECK (amount >= 0),
  CONSTRAINT ck_mp_income_item_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_income_item_frequency CHECK (frequency IN ('daily','weekly','monthly','yearly','one_time')),
  CONSTRAINT ck_mp_income_item_visibility_scope CHECK (visibility_scope IN ('private','shared')),
  CONSTRAINT ck_mp_income_item_date_range CHECK (end_date IS NULL OR end_date >= start_date)
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_expense_item (
  expense_item_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  title varchar(200) NOT NULL,
  category varchar(100) NOT NULL,
  amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  frequency varchar(30) NOT NULL,
  necessity_level varchar(30) NOT NULL,
  start_date date NOT NULL,
  end_date date,
  active_flag boolean NOT NULL DEFAULT true,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_expense_item_amount_nonnegative CHECK (amount >= 0),
  CONSTRAINT ck_mp_expense_item_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_expense_item_frequency CHECK (frequency IN ('daily','weekly','monthly','yearly','one_time')),
  CONSTRAINT ck_mp_expense_item_necessity_level CHECK (necessity_level IN ('essential','normal','optional')),
  CONSTRAINT ck_mp_expense_item_visibility_scope CHECK (visibility_scope IN ('private','shared')),
  CONSTRAINT ck_mp_expense_item_date_range CHECK (end_date IS NULL OR end_date >= start_date)
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_asset_item (
  asset_item_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  asset_type varchar(50) NOT NULL,
  title varchar(200) NOT NULL,
  amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  institution_name varchar(200),
  valuation_basis varchar(50) NOT NULL,
  liquidity_level varchar(30) NOT NULL,
  ownership_scope varchar(30) NOT NULL,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_asset_item_amount_nonnegative CHECK (amount >= 0),
  CONSTRAINT ck_mp_asset_item_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_asset_item_asset_type CHECK (asset_type IN ('cash','bank_deposit','securities','insurance','real_estate','other')),
  CONSTRAINT ck_mp_asset_item_valuation_basis CHECK (valuation_basis IN ('input_manual','latest_known','estimate')),
  CONSTRAINT ck_mp_asset_item_liquidity_level CHECK (liquidity_level IN ('high','medium','low')),
  CONSTRAINT ck_mp_asset_item_ownership_scope CHECK (ownership_scope IN ('individual','couple','family')),
  CONSTRAINT ck_mp_asset_item_visibility_scope CHECK (visibility_scope IN ('private','shared'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_liability_item (
  liability_item_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  liability_type varchar(50) NOT NULL,
  title varchar(200) NOT NULL,
  balance_amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  monthly_payment numeric(18,2),
  interest_note text,
  due_date date,
  ownership_scope varchar(30) NOT NULL,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_liability_item_balance_nonnegative CHECK (balance_amount >= 0),
  CONSTRAINT ck_mp_liability_item_monthly_payment_nonnegative CHECK (monthly_payment IS NULL OR monthly_payment >= 0),
  CONSTRAINT ck_mp_liability_item_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_liability_item_type CHECK (liability_type IN ('mortgage','loan','credit_card','other')),
  CONSTRAINT ck_mp_liability_item_ownership_scope CHECK (ownership_scope IN ('individual','couple','family')),
  CONSTRAINT ck_mp_liability_item_visibility_scope CHECK (visibility_scope IN ('private','shared'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_event_budget (
  event_budget_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  event_name varchar(200) NOT NULL,
  planned_date date,
  target_amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  priority varchar(30) NOT NULL,
  related_family_member varchar(200),
  funding_source_note text,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_event_budget_target_amount_positive CHECK (target_amount > 0),
  CONSTRAINT ck_mp_event_budget_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_event_budget_priority CHECK (priority IN ('high','medium','low')),
  CONSTRAINT ck_mp_event_budget_visibility_scope CHECK (visibility_scope IN ('private','shared'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_saving_goal (
  saving_goal_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  goal_name varchar(200) NOT NULL,
  target_amount numeric(18,2) NOT NULL,
  currency_code varchar(3) NOT NULL,
  current_saved_amount numeric(18,2) NOT NULL DEFAULT 0,
  monthly_target_amount numeric(18,2),
  target_date date,
  linked_event_budget_id uuid REFERENCES app_money_planner.mp_event_budget(event_budget_id),
  status varchar(30) NOT NULL,
  memo text,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_saving_goal_target_amount_positive CHECK (target_amount > 0),
  CONSTRAINT ck_mp_saving_goal_current_saved_amount_nonnegative CHECK (current_saved_amount >= 0),
  CONSTRAINT ck_mp_saving_goal_monthly_target_amount_nonnegative CHECK (monthly_target_amount IS NULL OR monthly_target_amount >= 0),
  CONSTRAINT ck_mp_saving_goal_currency_len CHECK (char_length(currency_code) = 3),
  CONSTRAINT ck_mp_saving_goal_status CHECK (status IN ('active','paused','completed','archived')),
  CONSTRAINT ck_mp_saving_goal_visibility_scope CHECK (visibility_scope IN ('private','shared'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_scenario (
  scenario_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  name varchar(200) NOT NULL,
  description text,
  scenario_type varchar(50) NOT NULL,
  base_currency varchar(3) NOT NULL,
  active_flag boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_scenario_type CHECK (scenario_type IN ('default','saving','expense_increase','income_decrease','event_forward')),
  CONSTRAINT ck_mp_scenario_base_currency_len CHECK (char_length(base_currency) = 3)
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_shared_member (
  shared_member_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  user_ref varchar(200) NOT NULL,
  display_name varchar(200) NOT NULL,
  role varchar(30) NOT NULL,
  visibility_scope varchar(30) NOT NULL,
  invited_at timestamptz NOT NULL DEFAULT now(),
  accepted_at timestamptz,
  status varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_shared_member_role CHECK (role IN ('owner','partner_editor','viewer')),
  CONSTRAINT ck_mp_shared_member_visibility_scope CHECK (visibility_scope IN ('all','shared_only','selected_only')),
  CONSTRAINT ck_mp_shared_member_status CHECK (status IN ('pending','active','removed'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_memo_item (
  memo_item_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  owner_user_id uuid NOT NULL,
  memo_type varchar(50) NOT NULL,
  title varchar(200) NOT NULL,
  body text NOT NULL,
  visibility_scope varchar(30) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  CONSTRAINT ck_mp_memo_item_type CHECK (memo_type IN ('general','insurance','pension','tax_estimate','handover')),
  CONSTRAINT ck_mp_memo_item_visibility_scope CHECK (visibility_scope IN ('private','shared'))
);

CREATE TABLE IF NOT EXISTS app_money_planner.mp_financial_snapshot (
  financial_snapshot_id uuid PRIMARY KEY,
  plan_id uuid NOT NULL REFERENCES app_money_planner.mp_plan(plan_id),
  snapshot_date date NOT NULL,
  base_currency varchar(3) NOT NULL,
  total_income numeric(18,2) NOT NULL,
  total_expense numeric(18,2) NOT NULL,
  total_assets numeric(18,2) NOT NULL,
  total_liabilities numeric(18,2) NOT NULL,
  net_worth numeric(18,2) NOT NULL,
  scenario_id uuid REFERENCES app_money_planner.mp_scenario(scenario_id),
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT ck_mp_financial_snapshot_base_currency_len CHECK (char_length(base_currency) = 3),
  CONSTRAINT ck_mp_financial_snapshot_total_income_nonnegative CHECK (total_income >= 0),
  CONSTRAINT ck_mp_financial_snapshot_total_expense_nonnegative CHECK (total_expense >= 0),
  CONSTRAINT ck_mp_financial_snapshot_total_assets_nonnegative CHECK (total_assets >= 0),
  CONSTRAINT ck_mp_financial_snapshot_total_liabilities_nonnegative CHECK (total_liabilities >= 0)
);
