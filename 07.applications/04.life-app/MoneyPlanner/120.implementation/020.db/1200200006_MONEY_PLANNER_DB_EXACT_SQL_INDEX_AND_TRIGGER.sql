-- ============================================================
-- MONEY PLANNER DB EXACT SQL INDEX AND TRIGGER
-- 佐藤（DB担当）レビュー前提
-- ============================================================

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
