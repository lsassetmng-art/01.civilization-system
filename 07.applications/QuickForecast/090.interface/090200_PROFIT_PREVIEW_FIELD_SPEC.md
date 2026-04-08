# ============================================================
# PROFIT PREVIEW FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of profit preview UI.

assumption_fields:
- expected_sales_quantity
- expected_unit_price
- expected_sales_amount
- expected_cost_amount
- expected_execution_cost

result_fields:
- expected_gross_profit
- expected_operating_profit
- profit_margin_rate
- inventory_need_note
- risk_note

actions:
- recalculate
- back_to_action
- back_to_proposal
- save_snapshot
