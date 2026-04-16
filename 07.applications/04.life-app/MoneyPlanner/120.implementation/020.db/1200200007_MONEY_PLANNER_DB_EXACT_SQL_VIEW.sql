-- ============================================================
-- MONEY PLANNER DB EXACT SQL VIEW
-- 佐藤（DB担当）レビュー前提
-- ============================================================

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
