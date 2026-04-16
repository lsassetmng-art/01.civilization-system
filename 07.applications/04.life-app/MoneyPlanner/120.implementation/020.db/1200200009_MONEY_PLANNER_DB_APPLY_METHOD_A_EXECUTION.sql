BEGIN;

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

CREATE UNIQUE INDEX IF NOT EXISTS ux_mp_shared_member_plan_user_active
  ON app_money_planner.mp_shared_member(plan_id, user_ref)
  WHERE deleted_at IS NULL;

CREATE UNIQUE INDEX IF NOT EXISTS ux_mp_scenario_plan_name_active
  ON app_money_planner.mp_scenario(plan_id, name)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_income_item_plan_active_start_date
  ON app_money_planner.mp_income_item(plan_id, active_flag, start_date)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_expense_item_plan_active_start_date
  ON app_money_planner.mp_expense_item(plan_id, active_flag, start_date)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_asset_item_plan_asset_type
  ON app_money_planner.mp_asset_item(plan_id, asset_type)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_liability_item_plan_liability_type
  ON app_money_planner.mp_liability_item(plan_id, liability_type)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_saving_goal_plan_status_target_date
  ON app_money_planner.mp_saving_goal(plan_id, status, target_date)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_event_budget_plan_planned_date_priority
  ON app_money_planner.mp_event_budget(plan_id, planned_date, priority)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_scenario_plan_active_flag
  ON app_money_planner.mp_scenario(plan_id, active_flag)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_shared_member_plan_role_status
  ON app_money_planner.mp_shared_member(plan_id, role, status)
  WHERE deleted_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_mp_financial_snapshot_plan_snapshot_date
  ON app_money_planner.mp_financial_snapshot(plan_id, snapshot_date);

CREATE OR REPLACE FUNCTION app_money_planner.fn_set_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_mp_plan_set_updated_at ON app_money_planner.mp_plan;
CREATE TRIGGER trg_mp_plan_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_plan
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_income_item_set_updated_at ON app_money_planner.mp_income_item;
CREATE TRIGGER trg_mp_income_item_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_income_item
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_expense_item_set_updated_at ON app_money_planner.mp_expense_item;
CREATE TRIGGER trg_mp_expense_item_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_expense_item
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_asset_item_set_updated_at ON app_money_planner.mp_asset_item;
CREATE TRIGGER trg_mp_asset_item_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_asset_item
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_liability_item_set_updated_at ON app_money_planner.mp_liability_item;
CREATE TRIGGER trg_mp_liability_item_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_liability_item
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_event_budget_set_updated_at ON app_money_planner.mp_event_budget;
CREATE TRIGGER trg_mp_event_budget_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_event_budget
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_saving_goal_set_updated_at ON app_money_planner.mp_saving_goal;
CREATE TRIGGER trg_mp_saving_goal_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_saving_goal
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_scenario_set_updated_at ON app_money_planner.mp_scenario;
CREATE TRIGGER trg_mp_scenario_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_scenario
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_shared_member_set_updated_at ON app_money_planner.mp_shared_member;
CREATE TRIGGER trg_mp_shared_member_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_shared_member
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

DROP TRIGGER IF EXISTS trg_mp_memo_item_set_updated_at ON app_money_planner.mp_memo_item;
CREATE TRIGGER trg_mp_memo_item_set_updated_at
BEFORE UPDATE ON app_money_planner.mp_memo_item
FOR EACH ROW
EXECUTE FUNCTION app_money_planner.fn_set_updated_at();

CREATE OR REPLACE VIEW app_money_planner.v_mp_plan_balance_summary AS
SELECT
  p.plan_id,
  p.owner_user_id,
  p.base_currency,
  COALESCE(i.total_income, 0)::numeric(18,2) AS total_income,
  COALESCE(e.total_expense, 0)::numeric(18,2) AS total_expense,
  COALESCE(a.total_assets, 0)::numeric(18,2) AS total_assets,
  COALESCE(l.total_liabilities, 0)::numeric(18,2) AS total_liabilities,
  (COALESCE(a.total_assets, 0) - COALESCE(l.total_liabilities, 0))::numeric(18,2) AS net_worth
FROM app_money_planner.mp_plan p
LEFT JOIN (
  SELECT plan_id, SUM(amount)::numeric(18,2) AS total_income
  FROM app_money_planner.mp_income_item
  WHERE deleted_at IS NULL AND active_flag = true
  GROUP BY plan_id
) i ON p.plan_id = i.plan_id
LEFT JOIN (
  SELECT plan_id, SUM(amount)::numeric(18,2) AS total_expense
  FROM app_money_planner.mp_expense_item
  WHERE deleted_at IS NULL AND active_flag = true
  GROUP BY plan_id
) e ON p.plan_id = e.plan_id
LEFT JOIN (
  SELECT plan_id, SUM(amount)::numeric(18,2) AS total_assets
  FROM app_money_planner.mp_asset_item
  WHERE deleted_at IS NULL
  GROUP BY plan_id
) a ON p.plan_id = a.plan_id
LEFT JOIN (
  SELECT plan_id, SUM(balance_amount)::numeric(18,2) AS total_liabilities
  FROM app_money_planner.mp_liability_item
  WHERE deleted_at IS NULL
  GROUP BY plan_id
) l ON p.plan_id = l.plan_id
WHERE p.deleted_at IS NULL;

CREATE OR REPLACE VIEW app_money_planner.v_mp_goal_progress_summary AS
SELECT
  g.plan_id,
  COUNT(*) FILTER (WHERE g.deleted_at IS NULL AND g.status = 'active') AS active_goal_count,
  COUNT(*) FILTER (WHERE g.deleted_at IS NULL AND g.status = 'completed') AS completed_goal_count,
  COALESCE(SUM(g.target_amount) FILTER (WHERE g.deleted_at IS NULL), 0)::numeric(18,2) AS total_target_amount,
  COALESCE(SUM(g.current_saved_amount) FILTER (WHERE g.deleted_at IS NULL), 0)::numeric(18,2) AS total_current_saved_amount
FROM app_money_planner.mp_saving_goal g
GROUP BY g.plan_id;

CREATE OR REPLACE VIEW app_money_planner.v_mp_upcoming_event_budget_summary AS
SELECT
  eb.plan_id,
  COUNT(*) FILTER (
    WHERE eb.deleted_at IS NULL
      AND eb.planned_date IS NOT NULL
      AND eb.planned_date >= CURRENT_DATE
  ) AS upcoming_count,
  COALESCE(SUM(eb.target_amount) FILTER (
    WHERE eb.deleted_at IS NULL
      AND eb.planned_date IS NOT NULL
      AND eb.planned_date >= CURRENT_DATE
  ), 0)::numeric(18,2) AS total_upcoming_amount
FROM app_money_planner.mp_event_budget eb
GROUP BY eb.plan_id;

COMMIT;

-- verification
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'app_money_planner'
ORDER BY table_name;

SELECT schemaname, viewname
FROM pg_views
WHERE schemaname = 'app_money_planner'
ORDER BY viewname;
