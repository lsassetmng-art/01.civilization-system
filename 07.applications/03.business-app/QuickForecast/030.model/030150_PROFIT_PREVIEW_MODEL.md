# ============================================================
# PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: profit_preview
owner: Boss
prepared_by: Zero

purpose:
Represents a simplified revenue/profit image tied to draft action.

fields:
- profit_preview_id
- forecast_id
- scenario_id
- action_id
- expected_sales_quantity
- expected_unit_price
- expected_sales_amount
- expected_cost_amount
- expected_gross_profit
- expected_execution_cost
- expected_operating_profit
- profit_margin_rate
- inventory_need_note
- risk_note
- created_at
- updated_at
