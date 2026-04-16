# ============================================================
# FORECAST SCENARIO MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_scenario
owner: Boss
prepared_by: Zero

purpose:
Represents alternative forecast scenarios.

scenario_examples:
- base
- bullish
- cautious
- event_push
- supply_constrained
- sales_push

fields:
- scenario_id
- forecast_id
- scenario_code
- scenario_name
- scenario_order
- quantity_delta
- amount_delta
- assumption_note
- is_selected
- created_at
- updated_at
